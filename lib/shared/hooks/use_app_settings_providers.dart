import 'package:flutter/material.dart';
// providers
import 'package:skycast/providers/app_settings_provider/app_settings_provider.dart';
// packages
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

AppSettingsProvider useAppSettingsProviders(BuildContext context) {
  final appSettingsProviders = useMemoized<AppSettingsProvider>(() => Provider.of<AppSettingsProvider>(context),
      [Provider.of<AppSettingsProvider>(context).isDarkTheme, Provider.of<AppSettingsProvider>(context).language]);
  return appSettingsProviders;
}
