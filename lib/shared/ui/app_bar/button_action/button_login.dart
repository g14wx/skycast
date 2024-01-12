import 'package:flutter/material.dart';
import 'package:provider/provider.dart' as original_provider;
import 'package:skycast/router/constants/app_routes.dart';
import 'package:skycast/router/providers/navigator_keys_provider.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration:
      BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: const BorderRadius.all(Radius.circular(50))),
      child: IconButton(onPressed: () {
        final navigatorKeys =
            original_provider.Provider.of<NavigatorKeysProvider>(context, listen: false).navigationDefault;
        if (navigatorKeys.currentContext != null) {
          Navigator.of(navigatorKeys.currentContext!).pushNamed(AppRoutes.rootLogin);
        }
      }, icon: const Icon(Icons.login, color: Colors.white,)),
    );
  }
}
