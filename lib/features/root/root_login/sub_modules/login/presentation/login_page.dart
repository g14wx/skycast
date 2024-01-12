import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/router/constants/navigator_keys.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/ui/app_bar/app_bar.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(localizations.login),
        appBar: AppBar(),
        showLoginButton: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            final navigatorProvider = NavigatorKeys.navigationDefault;
            final defaultContext = navigatorProvider.currentContext;
            if (defaultContext != null) {
              Navigator.of(defaultContext).pop();
            }
          },
        ),
      ),
      body: const Center(
        child: Text("Login Form"),
      ),
    );
  }
}
