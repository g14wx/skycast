import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_bloc/login_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/screens/already_logged_in_screen.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/widgets/wrapper_login_form.dart';
import 'package:skycast/router/constants/navigator_keys.dart';
import 'package:skycast/services/service_locator/service_locator_setup.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/ui/app_bar/app_bar.dart';

class LoginPage extends HookConsumerWidget {
  final bool showAppBar;
  const LoginPage({super.key, this.showAppBar = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    return Scaffold(
      appBar: showAppBar
          ? BaseAppBar(
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
            )
          : null,
      body: Center(
        child: BlocProvider(
          create: (context) => getIt<LoginBloc>(),
          child: BlocBuilder<LoginStateBloc, LoginStateState>(
            builder: (context, state) {
              if (state is LoginStateInitial) {
                BlocProvider.of<LoginBloc>(context).add(const LoginEvent.resetLoginState());
                return const WrapperLoginForm();
              }
              final successState = state as LoginStateSuccess;
              return AlreadyLoggedInScreen(
                authUser: successState.authUser,
              );
            },
          ),
        ),
      ),
    );
  }
}
