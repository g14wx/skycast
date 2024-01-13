import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/BloCs/login_state_bloc/login_state_bloc.dart';
import 'package:skycast/providers/auth_provider/models/auth_user.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class AlreadyLoggedInScreen extends HookConsumerWidget {
  final AuthUser authUser;

  const AlreadyLoggedInScreen({super.key, required this.authUser});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    return ConstrainedBox(
        constraints: BoxConstraints.loose(const Size(500, 500)),
        child: Container(
          height: 500,
          width: 500,
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(localizations.youAreAlreadyLoggedIn),
              const SizedBox(
                height: 10,
              ),
              if (authUser.profilePicture != null)
                CachedNetworkImage(
                  fadeInDuration: const Duration(seconds: 1),
                  imageUrl: authUser.profilePicture!,
                  placeholder: (context, url) {
                    return Container();
                  },
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.browser_not_supported, size: 64);
                  },
                  width: 64,
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  "${localizations.name}: ${authUser.name}",
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text("${localizations.email}: ${authUser.email}", textAlign: TextAlign.center),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text("${localizations.phoneNumber}: ${authUser.phoneNumber}", textAlign: TextAlign.center),
              ),
              OutlinedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
                  ),
                  onPressed: () {
                    BlocProvider.of<LoginStateBloc>(context).add(const LoginStateEvent.logout());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        localizations.logout,
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
