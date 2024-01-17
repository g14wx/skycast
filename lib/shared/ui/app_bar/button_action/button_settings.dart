import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:skycast/constants/global_app_constants.dart';
import 'package:skycast/constants/objects_keys.dart';
import 'package:skycast/providers/app_settings_provider/app_settings_provider.dart';
import 'package:skycast/shared/hooks/use_app_settings_providers.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class ButtonSettings extends HookConsumerWidget {
  const ButtonSettings({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLocalizations translations = useAppTranslation(context)!;
    final AppSettingsProvider appSettingsProvider = useAppSettingsProviders(context);
    return Row(
      children: [
        IconButton(
            onPressed: () {
              appSettingsProvider.changeTheme(value: !appSettingsProvider.isDarkTheme);
            },
            icon: Icon(!appSettingsProvider.isDarkTheme ? Icons.sunny : Icons.dark_mode)),
        PopupMenuButton<String>(
          key: ObjectKeys.changeLanguageButtonKey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          icon: Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor, borderRadius: const BorderRadius.all(Radius.circular(50))),
            child: const Center(
                child: Icon(
              Icons.language,
              color: Colors.white,
            )),
          ),
          onSelected: (String item) {
            appSettingsProvider.changeLanguage(value: item);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              key: ObjectKeys.changeLanguageButtonSpanishKey,
              value: GlobalAppConstants.languageEs,
              child: Text("${translations.changeLanguageTo} 🇪🇸",
                  style: appSettingsProvider.language == GlobalAppConstants.languageEs
                      ? Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
                      : null),
            ),
            PopupMenuItem<String>(
              value: GlobalAppConstants.languageEn,
              child: Text("${translations.changeLanguageTo} 🇺🇸",
                  style: appSettingsProvider.language == GlobalAppConstants.languageEn
                      ? Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
                      : null),
            ),
            PopupMenuItem<String>(
              key: ObjectKeys.changeLanguageButtonArabKey,
              value: GlobalAppConstants.languageAr,
              child: Text("${translations.changeLanguageTo} 🇸🇦",
                  style: appSettingsProvider.language == GlobalAppConstants.languageAr
                      ? Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)
                      : null),
            ),
          ],
        ),
      ],
    );
  }
}
