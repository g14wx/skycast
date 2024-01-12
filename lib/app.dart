import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as original_provider;
import 'package:skycast/providers/app_settings_provider/app_settings_provider.dart';
import 'package:skycast/router/app_router.dart';
import 'package:skycast/router/providers/navigator_keys_provider.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/themes/protocols/i_color_schema.dart';
import 'package:skycast/themes/protocols/i_custom_colors_container.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return original_provider.MultiProvider(
        providers: [
          original_provider.ListenableProvider(create: (_) => getIt<AppSettingsProvider>()),
          original_provider.ListenableProvider(create: (_) => getIt<NavigatorKeysProvider>()),
        ],
        child: const ProviderScope(
          child: MyApp(),
        ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = TextTheme(
        displayLarge: const TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
        ),
        titleLarge: GoogleFonts.raleway(fontSize: 25),
        titleMedium: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        titleSmall: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
        bodyLarge: GoogleFonts.poppins(fontSize: 15),
        bodyMedium: GoogleFonts.poppins(fontSize: 13),
        bodySmall: GoogleFonts.poppins(fontSize: 18),
        displayMedium: GoogleFonts.poppins(fontSize: 13),
        displaySmall: GoogleFonts.poppins(fontSize: 12),
        labelLarge: GoogleFonts.poppins(fontSize: 12),
        labelMedium: GoogleFonts.poppins(fontSize: 10),
        labelSmall: GoogleFonts.poppins(fontSize: 9));

    return original_provider.Consumer<NavigatorKeysProvider>(
      builder: (context, navigatorKeysProvider, _) {
        return original_provider.Consumer<AppSettingsProvider>(
          builder: (context, appSettingsProvider, child) => DynamicColorBuilder(builder: (lightDynamic, darkDynamic) {
            ColorScheme lightScheme;
            ColorScheme darkScheme;
            ThemeExtension lightCustomColors;
            ThemeExtension darkCustomColors;
            if (lightDynamic != null && darkDynamic != null) {
              lightScheme = lightDynamic.harmonized();
              lightCustomColors = getIt<ICustomColorsContainer>().lightCustomColors.harmonized(lightScheme);

              // Repeat for the dark color scheme.
              darkScheme = darkDynamic.harmonized();
              darkCustomColors = getIt<ICustomColorsContainer>().darkCustomColors.harmonized(darkScheme);
            } else {
              // Otherwise, use fallback schemes.
              lightScheme = getIt<IColorSchema>().lightColorScheme;
              lightCustomColors = getIt<ICustomColorsContainer>().lightCustomColors.harmonized(lightScheme);
              darkScheme = getIt<IColorSchema>().darkColorScheme;
              darkCustomColors = getIt<ICustomColorsContainer>().darkCustomColors.harmonized(darkScheme);
            }
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKeysProvider.navigationDefault,
                builder: (context, widget) => ResponsiveBreakpoints.builder(breakpoints: const [
                      Breakpoint(start: 0, end: 450, name: MOBILE),
                      Breakpoint(start: 451, end: 600, name: TABLET),
                      Breakpoint(start: 6001, end: 1024, name: DESKTOP),
                      Breakpoint(start: 1025, end: double.infinity, name: '4K'),
                    ], child: widget!),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                theme: ThemeData(
                    useMaterial3: true,
                    colorScheme: getIt<IColorSchema>().lightColorScheme,
                    extensions: [lightCustomColors],
                    textTheme: textTheme),
                darkTheme: ThemeData(
                    useMaterial3: true,
                    colorScheme: getIt<IColorSchema>().darkColorScheme,
                    extensions: [darkCustomColors],
                    textTheme: textTheme),
                onGenerateRoute: (settings) => AppRouter.onGenerateRoute(settings),
                locale: Locale(appSettingsProvider.language),
                themeMode: appSettingsProvider.isDarkTheme ? ThemeMode.dark : ThemeMode.light,
                title: "");
          }),
        );
      },
    );
  }
}
