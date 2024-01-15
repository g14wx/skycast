import 'package:flutter/material.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';

abstract class IWeatherProvider implements Listenable {
  Future<void> setup({bool notify = true});
  List<ConditionTranslation> getConditions();
  saveConditions(List<ConditionTranslation> conditions);
}
