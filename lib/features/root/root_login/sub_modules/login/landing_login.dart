import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/login_page.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';

class LandingLogin extends StatelessWidget {
  const LandingLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginStateBloc>(),
      child: const LoginPage(),
    );
  }
}
