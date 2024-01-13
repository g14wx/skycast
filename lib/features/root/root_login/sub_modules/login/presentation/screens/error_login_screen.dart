import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class ErrorLoginScreen extends HookConsumerWidget {
  const ErrorLoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        BlocProvider.of<LoginBloc>(context).add(const LoginEvent.attemptLogin());
      });
      return null;
    }, []);

    final localizations = useAppTranslation(context)!;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Lottie.asset(Assets.error1, repeat: false), Text(localizations.pickAUser)],
      ),
    );
  }
}
