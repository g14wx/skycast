import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class LoginForm extends HookConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    return Column(
      children: [
        const Flexible(child: SizedBox(height: 10)),
        Text(
          localizations.login,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context).add(const LoginEvent.attemptLogin());
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                      width: 30,
                    ),
                    Text(
                      localizations.loginWithGoogle,
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),
                    ),
                  ],
                ))
          ],
        ))
      ],
    );
  }
}
