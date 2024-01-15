import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/data/weather_api/models/currrent_weather/current_weather.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_service.dart';

part 'get_weather_event.dart';
part 'get_weather_state.dart';

part 'get_weather_bloc.freezed.dart';

@injectable
class GetWeatherBloc extends Bloc<GetWeatherEvent, GetWeatherState> {
  final IWeatherApiService _weatherApiService;
  GetWeatherBloc(this._weatherApiService) : super(const GetWeatherInitial()) {
    on<GetWeatherEvent>((event, emit) async {
      await event.map(
        getWeather: (value) async {
          emit(const GetWeatherLoading());
          final result = await _weatherApiService.getWeather(query: value.query);

          if (result.isLeft()) {
            final msg = result.fold((l) => l, (r) => null)!;
            emit(GetWeatherError(msg: msg.toString()));
            return;
          }
          final currentWeather = result.fold((l) => null, (r) => r)!;
          emit(GetWeatherSuccess(currentWeather: currentWeather));
        },
        resetState: (_ResetState value) {
          emit(const GetWeatherInitial());
        },
      );
    });
  }
}
