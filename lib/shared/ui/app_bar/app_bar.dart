import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/shared/ui/app_bar/button_action/button_login.dart';
import 'package:skycast/shared/ui/app_bar/button_action/button_settings.dart';

// ignore: must_be_immutable
class BaseAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final Text title;
  final AppBar appBar;
  List<Widget>? widgets;
  Widget? leading;
  var appBarHeight = useState(0);
  var appBarColor = useState(Colors.transparent);
  final bool showLoginButton;

  /// you can add more fields that meet your needs

  BaseAppBar(
      {super.key, required this.title, required this.appBar, this.widgets, this.leading, this.showLoginButton = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: 300,
      backgroundColor: appBarColor.value,
      title: title,
      actions: [...?widgets, const ButtonSettings(), if (showLoginButton) const ButtonLogin()],
      leading: leading ?? const Icon(Icons.cloud),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height + appBarHeight.value);
}
