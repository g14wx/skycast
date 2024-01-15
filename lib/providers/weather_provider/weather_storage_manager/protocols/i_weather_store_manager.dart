import 'package:skycast/data/weather_api/models/condition_translation.dart';

abstract class IWeatherStoreManager {
  Future<bool> saveConditions(List<ConditionTranslation> conditions);
  Future<List<ConditionTranslation>?> getConditions();
}
