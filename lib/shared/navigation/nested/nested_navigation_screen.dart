import 'package:skycast/router/constants/app_routes.dart';
import 'package:flutter/material.dart';

class NestedScreen extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey;
  final Function _onGenerateRoute;
  const NestedScreen({Key? key, required GlobalKey<NavigatorState> navigatorKey, required Function onGenerateRoute})
      : _navigatorKey = navigatorKey,
        _onGenerateRoute = onGenerateRoute,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: _navigatorKey,
        initialRoute: AppRoutes.root,
        onGenerateRoute: (routeSettings) => _onGenerateRoute(routeSettings),
      ),
    );
  }
}
