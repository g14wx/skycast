import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/env.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart';

@LazySingleton(as: IWeatherProvider, env: [(Env.test)])
class MockWeatherProvider implements IWeatherProvider {
  @override
  void addListener(VoidCallback listener) {}

  @override
  List<ConditionTranslation> getConditions() {
    return [
      const ConditionTranslation(
        code: 1,
        day: "",
        icon: 1,
        languages: [],
        night: "",
      )
    ];
  }

  @override
  void removeListener(VoidCallback listener) {}

  @override
  saveConditions(List<ConditionTranslation> conditions) {}

  @override
  Future<void> setup({bool notify = true}) async {}
}
