part of 'get_weather_bloc.dart';

@freezed
class GetWeatherEvent with _$GetWeatherEvent {
  const factory GetWeatherEvent.getWeather({required String query}) = _GetWeatherEvent;
  const factory GetWeatherEvent.resetState() = _ResetState;
}
