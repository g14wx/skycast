import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/screens/error_login_screen.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/screens/loading_login_screen.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/screens/success_login_screen.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/widgets/login_form.dart';

class WrapperLoginForm extends StatelessWidget {
  const WrapperLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ConstrainedBox(
          constraints: BoxConstraints.loose(const Size(500, 500)),
          child: Container(
            height: 500,
            width: 500,
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: BlocConsumer<LoginBloc, LoginState>(
              builder: (context, state) {
                return state.maybeMap(
                  loading: (value) {
                    return const LoadingLoginScreen();
                  },
                  success: (value) {
                    return SuccessLoginScreen(
                      authUser: value.authUser,
                    );
                  },
                  noUserWasSelected: (value) {
                    return const ErrorLoginScreen();
                  },
                  orElse: () {
                    return const LoginForm();
                  },
                );
              },
              listener: (BuildContext context, LoginState state) {},
            ),
          )),
      const Positioned(
        top: 0,
        child: Icon(
          Icons.sunny,
          size: 80,
          color: Colors.yellow,
        ),
      ),
      const Positioned(
        top: 10,
        left: 20,
        child: Icon(
          Icons.cloud,
          size: 80,
          color: Colors.lightBlueAccent,
        ),
      ),
      const Positioned(
        top: 0,
        right: 0,
        child: Icon(
          Icons.dark_mode,
          size: 80,
          color: Colors.yellow,
        ),
      ),
      const Positioned(
        top: 10,
        right: 20,
        child: Icon(
          Icons.cloud,
          size: 80,
          color: Colors.lightBlueAccent,
        ),
      ),
    ]);
  }
}
