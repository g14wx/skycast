import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:skycast/constants/storage_keys.dart';
import 'package:skycast/data/weather_api/models/condition_translation.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_store_manager.dart';
import 'package:skycast/services/data_storage/protocols/i_data_storage.dart';

@Injectable(as: IWeatherStoreManager)
class WeatherStoreManager implements IWeatherStoreManager {
  final IDataStorage _dataStorage;

  WeatherStoreManager(this._dataStorage);
  @override
  Future<List<ConditionTranslation>?> getConditions() async {
    final result =
        await _dataStorage.getData(service: StorageKeys.weatherService, key: StorageKeys.weatherConditionsTranslations);
    return result.fold((l) => null, (json) {
      final rawJson = jsonDecode(jsonEncode(json));
      final dynamicList = jsonDecode(rawJson) as List;
      final listCastedResponse = dynamicList.map((rawCondition) => rawCondition as Map<String, dynamic>).toList();
      return listCastedResponse.map((conditionJson) => ConditionTranslation.fromJson(conditionJson)).toList();
    });
  }

  @override
  Future<bool> saveConditions(List<ConditionTranslation> conditions) async {
    final result = await _dataStorage.writeData(
        service: StorageKeys.weatherService,
        key: StorageKeys.weatherConditionsTranslations,
        value: jsonEncode(conditions));
    return result.fold((l) => false, (r) => true);
  }
}
