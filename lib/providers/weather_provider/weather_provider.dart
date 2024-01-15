import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_store_manager.dart';

@Singleton(as: IWeatherProvider, env: [Env.local, Env.production, Env.staging])
class WeatherProvider extends ChangeNotifier implements IWeatherProvider {
  final IWeatherStoreManager _weatherStoreManager;

  List<ConditionTranslation> _conditions = [];
  WeatherProvider(this._weatherStoreManager);

  @override
  Future<void> setup({bool notify = true}) async {
    final result = await _weatherStoreManager.getConditions();
    if (result != null) {
      _conditions = result;
      if (notify) {
        notifyListeners();
      }
    }
  }

  @override
  List<ConditionTranslation> getConditions() {
    return _conditions;
  }

  @override
  saveConditions(List<ConditionTranslation> conditions) async {
    await _weatherStoreManager.saveConditions(conditions);
    notifyListeners();
  }

  List<ConditionTranslation> get getAllConditions => _conditions;
}
