part of 'weather_setup_bloc.dart';

@freezed
class WeatherSetupEvent with _$WeatherSetupEvent {
  const factory WeatherSetupEvent.getConditionTranslationsList() = _GetConditionTranslationsList;
}
