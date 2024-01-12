import 'package:flutter/material.dart';

// packages
import 'package:skycast/BloCs/default_bloc.dart';
import 'package:skycast/features/root/root/landing_root.dart';
import 'package:skycast/features/root/root_home/root_home/wrapping_landing_root_home.dart';
import 'package:skycast/features/root/root_login/login/landing_login.dart';
import 'package:skycast/features/root/root_login/root_login/root_login_navigator.dart';
import 'package:skycast/providers/default_provider/default_provider.dart';

// blocs

// pages

// constants
import 'package:skycast/router/constants/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:skycast/router/providers/navigator_keys_provider.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';

import '../features/root/root_home/sub_modules/home_front/landing_home_front.dart';
import '../features/root/root_home/sub_modules/second_front/landing_root_home_second_front.dart';
import '../features/root/root_home/sub_modules/settings_front/landing_root_home_settings.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.root:
        return MaterialPageRoute(builder: (_) {
          return MultiProvider(
            providers: [
              ListenableProvider(create: (context) => getIt<DefaultProvider>()),
            ],
            child: MultiBlocProvider(providers: [
              BlocProvider(
                create: (_) => getIt<DefaultBloc>(),
              )
            ], child: const LandingRoot()),
          );
        });

      case AppRoutes.rootHome:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return MultiProvider(
              providers: [
                ListenableProvider(create: (context) => getIt<DefaultProvider>()),
              ],
              child: MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (_) => getIt<DefaultBloc>()),
                  ],
                  child: MultiProvider(
                    providers: [
                      ListenableProvider(create: (_) => getIt<NavigatorKeysProvider>()),
                    ],
                    child: const WrappingLandingRootHome(),
                  )),
            );
          },
          transitionDuration: const Duration(seconds: 3),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            /* const begin = Offset(0.0, 1.0);
            const end = Offset.zero; */
            const curve = Curves.ease;

            /*var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));*/
            var tweenFade = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));

            /*return SlideTransition(
              position: animation.drive(tween),
              child: child,
            ); */
            return FadeTransition(
              opacity: animation.drive(tweenFade),
              child: child,
            );
          },
        );

      case AppRoutes.rootLogin:
        return MaterialPageRoute(builder: (_) {
          return MultiProvider(
            providers: [
              ListenableProvider(create: (context) => getIt<DefaultProvider>()),
            ],
            child: MultiBlocProvider(providers: [
              BlocProvider(
                create: (_) => getIt<DefaultBloc>(),
              )
            ], child: const RootLoginNavigator()),
          );
        });
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Text('not found on main routes');
          },
        );
    }
  }

  static Route onGenerateRouteRootHomeLandingPage(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt<DefaultBloc>(),
              child: MultiProvider(
                providers: [
                  ListenableProvider(
                    create: (context) => getIt<DefaultProvider>(),
                  )
                ],
                child: const LandingHomeFront(),
              ),
            );
          },
        );

      case AppRoutes.rootHomePage1:
        return MaterialPageRoute(
          builder: (context) {
            return const Center(
              child: Text("Page 1"),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Text('not found on dashboard routes home');
          },
        );
    }
  }

  static Route onGenerateRouteRootHomeSettings(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) {
            return const LandingRootHomeSettings();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Text('not found on dashboard routes');
          },
        );
    }
  }

  static Route onGenerateRouteRootHomeSecond(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) {
            return MultiProvider(
              providers: [ListenableProvider(create: (context) => getIt<DefaultProvider>())],
              child: const LandingRootHomeSecondFront(),
            );
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('not found on dashboard routes'),
              ),
            );
          },
        );
    }
  }

  static Route onGenerateRouteLogin(RouteSettings route) {
    switch (route.name) {
      case AppRoutes.root:
        return MaterialPageRoute(
          builder: (context) {
            return MultiProvider(
              providers: [
                ListenableProvider(create: (context) => getIt<DefaultProvider>()),
              ],
              child: MultiBlocProvider(providers: [
                BlocProvider(
                  create: (_) => getIt<DefaultBloc>(),
                ),
              ], child: const LandingLogin()),
            );
          },
        );
/*
      case AppRoutes.root_checkout_user_details_form:
        return MaterialPageRoute(
          builder: (context) {
            return UserDetailPage();
          },
        );

      case AppRoutes.root_checkout_order_details_form:
        return MaterialPageRoute(
          builder: (context) {
            return MultiProvider(
              providers: [
                ListenableProvider(create: (context) => getIt<SavedDeliveryPositionsProvider>()),
                ListenableProvider(
                  create: (context) => getIt<ShoppingCartProvider>(),
                )
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (_) => getIt<SearchDirectionsCubit>(),
                  ),
                  BlocProvider(
                    create: (_) => getIt<CheckoutGuidedCubit>(),
                  )
                ],
                child: OrderDetailsPage(),
              ),
            );
          },
        ); */
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('not found on checkout routes'),
              ),
            );
          },
        );
    }
  }
}
