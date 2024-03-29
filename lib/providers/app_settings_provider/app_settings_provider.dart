import 'package:flutter/material.dart';
// interfaces
import 'package:skycast/providers/app_settings_provider/app_settings_storage_manager/protocols/i_app_settings_storage_manager.dart';
// packages
import 'package:injectable/injectable.dart';
// constants
import 'package:skycast/constants/global_app_constants.dart';

@injectable
class AppSettingsProvider extends ChangeNotifier {
  final IAppSettingsStorageManager appSettingsManager;
  bool isDarkTheme = false;
  String language = GlobalAppConstants.languageEn;

  AppSettingsProvider({required this.appSettingsManager}) {
    _setupAppSettings();
  }

  _setupAppSettings() async {
    final rawIsDarkTheme = await appSettingsManager.getThemeState();
    isDarkTheme = rawIsDarkTheme != null ? rawIsDarkTheme == true.toString() : false;
    final rawLanguage = await appSettingsManager.getLanguageState();
    language = rawLanguage ?? 'en';
    // without this, will not update the changes from the local storage (hive)
    notifyListeners();
  }

  _saveThemePreference() async {
    final value = isDarkTheme.toString();
    await appSettingsManager.saveThemeState(value);
  }

  _saveLanguagePreference() async {
    await appSettingsManager.saveLanguageState(language);
  }

  void changeTheme({required bool value}) {
    isDarkTheme = value;
    _saveThemePreference();
    notifyListeners();
  }

  void changeLanguage({required String value}) {
    language = value;
    _saveLanguagePreference();
    notifyListeners();
  }
}
