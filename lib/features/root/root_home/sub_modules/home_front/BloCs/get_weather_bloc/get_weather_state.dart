part of 'get_weather_bloc.dart';

@freezed
class GetWeatherState with _$GetWeatherState {
  const factory GetWeatherState.getWeatherInitial() = GetWeatherInitial;
  const factory GetWeatherState.getWeatherLoading() = GetWeatherLoading;
  const factory GetWeatherState.getWeatherSuccess({required CurrentWeather currentWeather}) = GetWeatherSuccess;
  const factory GetWeatherState.getWeatherError({required String msg}) = GetWeatherError;
}
