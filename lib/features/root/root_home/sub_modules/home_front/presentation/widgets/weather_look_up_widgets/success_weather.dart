import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/constants/global_app_constants.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';
import 'package:provider/provider.dart' as original_provider;
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart';
import 'package:skycast/shared/hooks/use_app_settings_providers.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class SuccessWeather extends HookConsumerWidget {
  final CurrentWeather currentWeather;

  const SuccessWeather({super.key, required this.currentWeather});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    final appSettings = useAppSettingsProviders(context);
    final conditionsTranslations =
        original_provider.Provider.of<IWeatherProvider>(context, listen: false).getConditions();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          currentWeather.location.region,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        Text(
          currentWeather.location.name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white, fontSize: 17),
        ),
        Text(
          "${currentWeather.current.temp_c}\u00B0",
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white, fontSize: 35),
        ),
        Text(
          (appSettings.language == GlobalAppConstants.languageEn)
              ? currentWeather.current.condition.text
              : getTranslation(
                  code: currentWeather.current.condition.code,
                  currentLanguage: appSettings.language,
                  fallbackTitle: currentWeather.current.condition.text,
                  conditionsTranslations: conditionsTranslations),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white, fontSize: 12),
        ),
        const SizedBox(
          height: 10,
        ),
        OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
            ),
            onPressed: () {
              BlocProvider.of<GetWeatherBloc>(context).add(const GetWeatherEvent.resetState());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.search),
                Text(
                  localizations.searchAgain,
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(color: Colors.black),
                ),
              ],
            ))
      ],
    );
  }

  String getTranslation(
      {required int code,
      required currentLanguage,
      required String fallbackTitle,
      required List<ConditionTranslation> conditionsTranslations}) {
    if (conditionsTranslations.isEmpty ||
        conditionsTranslations.where((element) => element.code == code).isEmpty ||
        conditionsTranslations
            .firstWhere((element) => element.code == code)
            .languages
            .where((element) => element.lang_iso == currentLanguage)
            .isEmpty) {
      return fallbackTitle;
    }
    return conditionsTranslations
        .firstWhere((element) => element.code == code)
        .languages
        .firstWhere((element) => element.lang_iso == currentLanguage)
        .day_text;
  }
}
