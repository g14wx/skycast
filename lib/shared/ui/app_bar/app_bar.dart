import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:skycast/constants/global_app_constants.dart';
import 'package:skycast/providers/app_settings_provider/app_settings_provider.dart';
import 'package:skycast/shared/hooks/use_app_settings_providers.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

// ignore: must_be_immutable
class BaseAppBar extends HookWidget implements PreferredSizeWidget {
  final Color backgroundColor = Colors.red;
  final Text title;
  final AppBar appBar;
  List<Widget>? widgets;
  Widget? leading;
  var appBarHeight = useState(0);
  var appBarColor = useState(Colors.transparent);



  /// you can add more fields that meet your needs

  BaseAppBar(
      {Key? key, required this.title, required this.appBar, this.widgets, this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = useAppTranslation(context);
    final AppSettingsProvider appSettingsProvider = useAppSettingsProviders(context);
    return AppBar(
      toolbarHeight: 300,
      backgroundColor: appBarColor.value,
      title: const Text("Hello"),
      actions: [
        IconButton(
            onPressed: () {
              appSettingsProvider.changeTheme(value: !appSettingsProvider.isDarkTheme);
            },
            icon: Icon(appSettingsProvider.isDarkTheme ? Icons.dark_mode : Icons.light_mode)),
        IconButton(
            onPressed: () {
              appSettingsProvider.changeLanguage(
                  value: appSettingsProvider.language == GlobalAppConstants.languageEn
                      ? GlobalAppConstants.languageEs
                      : GlobalAppConstants.languageEn);
            },
            icon: const Icon(Icons.translate)),
        ...?widgets
      ],
      leading: leading,
    );
  }


  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height + appBarHeight.value);
}
