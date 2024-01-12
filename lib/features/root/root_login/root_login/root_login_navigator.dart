import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/router/app_router.dart';
import 'package:skycast/router/constants/navigator_keys.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/navigation/nested/nested_navigation_functions_mixin.dart';
import 'package:skycast/shared/navigation/nested/root_nested_navigation_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RootLoginNavigator extends HookConsumerWidget with NestedNavigationFunctionsMixin {
  const RootLoginNavigator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = useAppTranslation(context)!;
    return RootNestedScreen(
      navigatorKey: NavigatorKeys.navigationLoginRoot,
      onGenerateRoute: AppRouter.onGenerateRouteLogin,
      onExitPageNestedNavigation: (BuildContext context) =>
          _onExitPageNestedNavigation(context, translations: translations),
    );
  }

  Future<bool> _onExitPageNestedNavigation(BuildContext context, {required AppLocalizations translations}) async {
    // if can pop, show a modal asking if they want to exit this route navigation
    final result = await closeConfirmationDialogBuilders(context,
        title: translations.exitConfirmation,
        description: translations.doYouWantToExit,
        confirmationButtonTitle: translations.yes,
        denyButtonTitle: translations.no);
    return result as bool;
  }
}
