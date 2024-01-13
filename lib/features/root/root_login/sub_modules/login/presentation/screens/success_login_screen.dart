import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';

class SuccessLoginScreen extends HookConsumerWidget {
  final AuthUser authUser;

  const SuccessLoginScreen({super.key, required this.authUser});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        BlocProvider.of<LoginStateBloc>(context).add(LoginStateEvent.loginIsSuccess(authUser: authUser));
      });
      return null;
    });
    return Center(
      child: Lottie.asset(Assets.success1, repeat: false),
    );
  }
}
