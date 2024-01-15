part of 'weather_setup_bloc.dart';

@freezed
class WeatherSetupState with _$WeatherSetupState {
  const factory WeatherSetupState.loading() = _Loading;
  const factory WeatherSetupState.success() = _Success;
  const factory WeatherSetupState.failed({required String failedMsg}) = _Failed;
}
