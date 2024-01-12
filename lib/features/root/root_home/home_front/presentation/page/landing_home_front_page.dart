import 'package:flutter/material.dart';
import 'package:skycast/router/constants/app_routes.dart';
import 'package:skycast/router/providers/navigator_keys_provider.dart';
import 'package:skycast/shared/ui/app_bar/button_action/button_settings.dart';
import 'package:provider/provider.dart' as original_provider;

class LandingHomeFrontPage extends StatelessWidget {
  const LandingHomeFrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const ButtonSettings(),
          IconButton(onPressed: () {
            final navigatorKeys =
                original_provider.Provider.of<NavigatorKeysProvider>(context, listen: false).navigationDefault;
            if (navigatorKeys.currentContext != null) {
              Navigator.of(navigatorKeys.currentContext!).pushNamed(AppRoutes.rootLogin);
            }
          }, icon: const Icon(Icons.login))
        ],
      ),
      body: const Center(
        child: Text("Landing Home Front Page"),
      ),
    );
  }
}
