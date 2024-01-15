import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/page/widgets/success_tile.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/widgets/sliver_app_bar_home.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/ui/app_bar/app_bar.dart';
import 'package:provider/provider.dart' as original_provider;

class LandingHomeFrontPage extends HookConsumerWidget {
  final GetWeatherState weatherState;

  const LandingHomeFrontPage({super.key, required this.weatherState});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useScrollController();

    final silverCollapsed = useState<bool>(false);

    controller.addListener(() {
      if (controller.offset > 220 && !controller.position.outOfRange) {
        if (!silverCollapsed.value) {
          // do what ever you want when silver is collapsing !
          silverCollapsed.value = true;
        }
      }
      if (controller.offset <= 220 && !controller.position.outOfRange) {
        if (silverCollapsed.value) {
          // do what ever you want when silver is expanding !
          silverCollapsed.value = false;
        }
      }
    });

    final translations = useAppTranslation(context)!;
    return Scaffold(
        appBar: BaseAppBar(
          title: Text(translations.dashboard),
          appBar: AppBar(),
        ),
        body: Center(
          child: CustomScrollView(
            controller: controller,
            slivers: <Widget>[
              BlocProvider.value(
                value: BlocProvider.of<GetWeatherBloc>(context),
                child: original_provider.MultiProvider(
                  providers: [
                    original_provider.ListenableProvider(
                      create: (context) => getIt<IWeatherProvider>(),
                    )
                  ],
                  child: const SliverAppBarHome(),
                ),
              ),
              SliverAppBar(
                pinned: true,
                floating: true,
                title: Padding(
                  padding: ResponsiveBreakpoints.of(context).isMobile
                      ? const EdgeInsets.symmetric(horizontal: 10)
                      : const EdgeInsets.symmetric(horizontal: 100),
                  child: Text(translations.details),
                ),
                centerTitle: false,
                elevation: 0,
              ),
              SliverPadding(
                padding: ResponsiveBreakpoints.of(context).isMobile
                    ? const EdgeInsets.symmetric(horizontal: 10)
                    : EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).isTablet ? 50 : 100),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200.0,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 1.0,
                  ),
                  delegate: SliverChildListDelegate([
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                          borderRadius: const BorderRadius.all(Radius.circular(25))),
                      child: weatherState.maybeMap(
                        getWeatherError: (value) {
                          return SuccessTile(title: const Text("Error"), icon: Container(), not: true);
                        },
                        getWeatherLoading: (value) {
                          return SuccessTile(title: Text(translations.loading), icon: Lottie.asset(Assets.loading2));
                        },
                        getWeatherSuccess: (value) {
                          return SuccessTile(
                            title: Text(
                                value.currentWeather.forecast.forecastday[0].day.daily_will_it_rain > 0
                                    ? translations.itWillRain
                                    : translations.wontRain,
                                style: Theme.of(context).textTheme.titleSmall),
                            icon: Lottie.asset(Assets.rain1),
                            not: value.currentWeather.forecast.forecastday[0].day.daily_will_it_rain <= 0,
                          );
                        },
                        orElse: () {
                          return SuccessTile(
                              title: Text(translations.noData),
                              icon: const Center(
                                  child: Icon(
                                Icons.not_interested_outlined,
                                size: 60,
                              )));
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                          borderRadius: const BorderRadius.all(Radius.circular(25))),
                      child: weatherState.maybeMap(
                        getWeatherError: (value) {
                          return SuccessTile(title: const Text("Error"), icon: Container(), not: true);
                        },
                        getWeatherLoading: (value) {
                          return SuccessTile(title: Text(translations.loading), icon: Lottie.asset(Assets.loading2));
                        },
                        getWeatherSuccess: (value) {
                          return SuccessTile(
                            title: Text(
                                value.currentWeather.forecast.forecastday[0].day.daily_will_it_snow > 0
                                    ? translations.itWillSnow
                                    : translations.wontSnow,
                                style: Theme.of(context).textTheme.titleSmall),
                            icon: Lottie.asset(
                              Assets.snow3,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            not: value.currentWeather.forecast.forecastday[0].day.daily_will_it_snow <= 0,
                          );
                        },
                        orElse: () {
                          return SuccessTile(
                              title: Text(translations.noData),
                              icon: const Center(
                                  child: Icon(
                                Icons.not_interested_outlined,
                                size: 60,
                              )));
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                          borderRadius: const BorderRadius.all(Radius.circular(25))),
                      child: weatherState.maybeMap(
                        getWeatherError: (value) {
                          return SuccessTile(title: const Text("Error"), icon: Container(), not: true);
                        },
                        getWeatherLoading: (value) {
                          return SuccessTile(title: Text(translations.loading), icon: Lottie.asset(Assets.loading2));
                        },
                        getWeatherSuccess: (value) {
                          return SuccessTile(
                              title: Column(
                                children: [
                                  Text(
                                    translations.humidity,
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              icon: Center(
                                  child: Stack(
                                children: [
                                  Positioned.fill(
                                      child: Text(value.currentWeather.current.humidity.toString(),
                                          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 50))),
                                  Lottie.asset(Assets.humidity3)
                                ],
                              )));
                        },
                        orElse: () {
                          return SuccessTile(
                              title: Text(translations.noData),
                              icon: const Center(
                                  child: Icon(
                                Icons.not_interested_outlined,
                                size: 60,
                              )));
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                          borderRadius: const BorderRadius.all(Radius.circular(25))),
                      child: weatherState.maybeMap(
                        getWeatherError: (value) {
                          return SuccessTile(title: const Text("Error"), icon: Container(), not: true);
                        },
                        getWeatherLoading: (value) {
                          return SuccessTile(title: Text(translations.loading), icon: Lottie.asset(Assets.loading2));
                        },
                        getWeatherSuccess: (value) {
                          return SuccessTile(
                              title: Column(
                                children: [
                                  Text(
                                    translations.windSpeed,
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              icon: Center(
                                  child: Stack(
                                children: [
                                  Positioned(
                                    top: 1,
                                    right: 10,
                                    child: Text("Kph",
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 50)),
                                  ),
                                  Positioned(
                                      bottom: 1,
                                      right: 10,
                                      child: Text(value.currentWeather.current.wind_kph.toString(),
                                          style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 50))),
                                  Lottie.asset(Assets.wind1)
                                ],
                              )));
                        },
                        orElse: () {
                          return SuccessTile(
                              title: Text(translations.noData),
                              icon: const Center(
                                  child: Icon(
                                Icons.not_interested_outlined,
                                size: 60,
                              )));
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
                          borderRadius: const BorderRadius.all(Radius.circular(25))),
                      child: weatherState.maybeMap(
                        getWeatherError: (value) {
                          return SuccessTile(title: const Text("Error"), icon: Container(), not: true);
                        },
                        getWeatherLoading: (value) {
                          return SuccessTile(title: Text(translations.loading), icon: Lottie.asset(Assets.loading2));
                        },
                        getWeatherSuccess: (value) {
                          return SuccessTile(
                              title: Column(
                                children: [
                                  Text(
                                    translations.uvIndex,
                                    style: Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                              icon: Center(
                                  child: Stack(
                                children: [
                                  Positioned.fill(child: Lottie.asset(Assets.uv1)),
                                  Positioned.fill(
                                      child: Center(
                                    child: Text(value.currentWeather.current.wind_kph.toString(),
                                        style: Theme.of(context).textTheme.displayMedium?.copyWith(fontSize: 50)),
                                  )),
                                ],
                              )));
                        },
                        orElse: () {
                          return SuccessTile(
                              title: Text(translations.noData),
                              icon: const Center(
                                  child: Icon(
                                Icons.not_interested_outlined,
                                size: 60,
                              )));
                        },
                      ),
                    ),
                  ]),
                ),
              ),
              weatherState.maybeMap(getWeatherSuccess: (value) {
                return SliverAppBar(
                  pinned: true,
                  floating: true,
                  title: Padding(
                    padding: ResponsiveBreakpoints.of(context).isMobile
                        ? const EdgeInsets.symmetric(horizontal: 10)
                        : const EdgeInsets.symmetric(horizontal: 100),
                    child: Text(translations.astroDetails),
                  ),
                  centerTitle: false,
                  elevation: 0,
                );
              }, orElse: () {
                return const SliverPadding(padding: EdgeInsets.all(10));
              }),
              weatherState.maybeMap(
                orElse: () {
                  return const SliverPadding(padding: EdgeInsets.all(10));
                },
                getWeatherSuccess: (value) {
                  return SliverPadding(
                      padding: ResponsiveBreakpoints.of(context).isMobile
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).isTablet ? 50 : 100),
                      sliver: SliverList(
                          delegate: SliverChildListDelegate([
                        ListTile(
                          leading: const Icon(Icons.sunny),
                          subtitle: Text(translations.sunrise),
                          title: Text(value.currentWeather.forecast.forecastday[0].astro.sunrise),
                        ),
                        ListTile(
                          leading: const Icon(Icons.sunny_snowing),
                          subtitle: Text(translations.sunset),
                          title: Text(value.currentWeather.forecast.forecastday[0].astro.sunset),
                        )
                      ])));
                },
              ),
              weatherState.maybeMap(getWeatherSuccess: (value) {
                return SliverAppBar(
                  pinned: true,
                  floating: true,
                  title: Padding(
                    padding: ResponsiveBreakpoints.of(context).isMobile
                        ? const EdgeInsets.symmetric(horizontal: 10)
                        : const EdgeInsets.symmetric(horizontal: 100),
                    child: Text(translations.moonDetails),
                  ),
                  centerTitle: false,
                  elevation: 0,
                );
              }, orElse: () {
                return const SliverPadding(padding: EdgeInsets.all(10));
              }),
              weatherState.maybeMap(
                orElse: () {
                  return const SliverPadding(padding: EdgeInsets.all(10));
                },
                getWeatherSuccess: (value) {
                  return SliverPadding(
                      padding: ResponsiveBreakpoints.of(context).isMobile
                          ? const EdgeInsets.symmetric(horizontal: 10)
                          : EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).isTablet ? 50 : 100),
                      sliver: SliverList(
                          delegate: SliverChildListDelegate([
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          subtitle: Text(translations.moonrise),
                          title: Text(value.currentWeather.forecast.forecastday[0].astro.moonrise),
                        ),
                        ListTile(
                          leading: const Icon(Icons.mode_night_sharp),
                          subtitle: Text(translations.moonset),
                          title: Text(value.currentWeather.forecast.forecastday[0].astro.moonset),
                        )
                      ])));
                },
              ),
            ],
          ),
        ));
  }
}
