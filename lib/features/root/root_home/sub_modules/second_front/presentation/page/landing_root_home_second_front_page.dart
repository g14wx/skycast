import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_login/sub_modules/login/presentation/login_page.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/ui/app_bar/app_bar.dart';

class LandingRootHomeSecondFrontPage extends HookConsumerWidget {
  const LandingRootHomeSecondFrontPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = useAppTranslation(context)!;
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(translations.profile),
        appBar: AppBar(),
      ),
      body: const LoginPage(showAppBar: false),
    );
  }
}
