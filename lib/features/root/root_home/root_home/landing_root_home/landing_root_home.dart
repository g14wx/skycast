import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:skycast/router/app_router.dart';
import 'package:skycast/router/providers/navigator_keys_provider.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/navigation/nested/nested_navigation_functions_mixin.dart';
import 'package:skycast/shared/navigation/nested/nested_navigation_screen.dart';
import 'package:provider/provider.dart' as original_provider;
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/themes/protocols/i_custom_colors_container.dart';

part 'landing_root_home_functions.dart';

class LandingRootHome extends HookConsumerWidget with NestedNavigationFunctionsMixin {
  const LandingRootHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    final List<Widget> nestedPages = [
      NestedScreen(
          navigatorKey: original_provider.Provider.of<NavigatorKeysProvider>(listen: false, context).navigationHome,
          onGenerateRoute: AppRouter.onGenerateRouteRootHomeLandingPage),
      NestedScreen(
          navigatorKey: original_provider.Provider.of<NavigatorKeysProvider>(listen: false, context).navigationSecond,
          onGenerateRoute: AppRouter.onGenerateRouteRootHomeSecond),
      NestedScreen(
          navigatorKey: original_provider.Provider.of<NavigatorKeysProvider>(listen: false, context).navigationSettings,
          onGenerateRoute: AppRouter.onGenerateRouteRootHomeInfo),
    ];

    return original_provider.Consumer<NavigatorKeysProvider>(
      // ignore: deprecated_member_use
      builder: (context, navigatorKeysProvider, child) => WillPopScope(
          onWillPop: () async {
            /* we use onWillPop, due to that when you try to get back in a nested navigator, for example in dashboard page, and you press the back button of the device
          this put the app in the foreground, and doesn't not get back in the nested navigator*/
            final navigator = navigatorKeysProvider.currentNavigationKey.currentState!;
            if (navigator.canPop()) {
              navigator.pop();
              // we return false here to not get to the foreground, and just pop in the nested navigator
              return false;
            }
            // only when we are on home we can pop
            if (navigatorKeysProvider.selectedIndexDrawer == 0) {
              final result = await closeConfirmationDialogBuilders(context,
                  title: localizations.closeApp,
                  description: localizations.closeAppDescription,
                  confirmationButtonTitle: localizations.yes,
                  denyButtonTitle: localizations.no);
              return result as bool;
            }
            // otherwise go back to home
            navigatorKeysProvider.setSelectedIndexDrawer(0);
            return false;
          },
          child: Scaffold(
            body: !(ResponsiveBreakpoints.of(context).isMobile || ResponsiveBreakpoints.of(context).isTablet)
                ? Row(
                    children: [
                      SideNavigationBar(
                        theme: SideNavigationBarTheme(
                            dividerTheme: const SideNavigationBarDividerTheme(
                                mainDividerColor: Colors.grey,
                                footerDividerColor: Colors.grey,
                                showHeaderDivider: true,
                                showMainDivider: true,
                                showFooterDivider: true),
                            itemTheme: SideNavigationBarItemTheme(
                                labelTextStyle:
                                    GoogleFonts.raleway(color: Theme.of(context).textTheme.labelMedium?.color)),
                            togglerTheme: const SideNavigationBarTogglerTheme()),
                        header: SideNavigationBarHeader(
                            title: const Text("SkyCast"),
                            image: Container(),
                            subtitle: Text(localizations.subtitleApp)),
                        selectedIndex: navigatorKeysProvider.selectedIndexDrawer,
                        items: [
                          SideNavigationBarItem(
                            icon: Icons.home,
                            label: localizations.home,
                          ),
                          SideNavigationBarItem(
                            icon: Icons.pages,
                            label: localizations.profile,
                          ),
                          SideNavigationBarItem(
                            icon: Icons.info,
                            label: localizations.info,
                          ),
                        ],
                        onTap: (value) => onItemTapped(value, context),
                        toggler: const SideBarToggler(
                          expandIcon: Icons.keyboard_arrow_left,
                          shrinkIcon: Icons.keyboard_arrow_right,
                        ),
                      ),

                      /// Make it take the rest of the available width
                      Expanded(
                        child: IndexedStack(
                          index: navigatorKeysProvider.selectedIndexDrawer,
                          children: nestedPages,
                        ),
                      )
                    ],
                  )
                : IndexedStack(
                    index: navigatorKeysProvider.selectedIndexDrawer,
                    children: nestedPages,
                  ),
            bottomNavigationBar:
                !(ResponsiveBreakpoints.of(context).isMobile || ResponsiveBreakpoints.of(context).isTablet)
                    ? null
                    : BottomNavigationBar(
                        backgroundColor:
                            _getBackgroundColorBottomNavigationBar(navigatorKeysProvider.selectedIndexDrawer, context),
                        selectedLabelStyle: GoogleFonts.lato(color: Colors.white, fontWeight: FontWeight.bold),
                        selectedIconTheme: const IconThemeData(color: Colors.white),
                        items: <BottomNavigationBarItem>[
                          BottomNavigationBarItem(
                            icon: const Icon(Icons.home),
                            label: localizations.home,
                          ),
                          BottomNavigationBarItem(
                            icon: const Icon(Icons.pages),
                            label: localizations.profile,
                          ),
                          BottomNavigationBarItem(
                            icon: const Icon(Icons.info),
                            label: localizations.info,
                          ),
                        ],
                        currentIndex: navigatorKeysProvider.selectedIndexDrawer,
                        selectedItemColor: Colors.white,
                        onTap: (value) => onItemTapped(value, context),
                      ),
          )),
    );
  }
}
