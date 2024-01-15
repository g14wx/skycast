import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:skycast/data/weather_api/protocols/i_weather_api_service.dart';
import 'package:skycast/providers/weather_provider/weather_storage_manager/protocols/i_weather_provider.dart';

part 'weather_setup_event.dart';
part 'weather_setup_state.dart';

part 'weather_setup_bloc.freezed.dart';

@injectable
class WeatherSetupBloc extends Bloc<WeatherSetupEvent, WeatherSetupState> {
  final IWeatherApiService _weatherApiService;
  final IWeatherProvider _weatherProvider;

  WeatherSetupBloc(this._weatherApiService, this._weatherProvider) : super(const WeatherSetupState.loading()) {
    on<WeatherSetupEvent>((event, emit) async {
      await event.map(
        getConditionTranslationsList: (value) async {
          // check if the conditions are already downloaded

          await _weatherProvider.setup(notify: false);
          final resultDataStorage = _weatherProvider.getConditions();
          if (resultDataStorage.isNotEmpty) {
            emit(const WeatherSetupState.success());
            return;
          }

          emit(const WeatherSetupState.loading());
          final result = await _weatherApiService.getTranslationsForConditions();
          if (result.isLeft()) {
            final exception = result.fold((l) => l, (r) => null)!;
            emit(WeatherSetupState.failed(failedMsg: exception.toString()));
          } else {
            final listOfConditionsTranslations = result.fold((l) => null, (r) => r)!;
            await _weatherProvider.saveConditions(listOfConditionsTranslations);
            emit(const WeatherSetupState.success());
          }
        },
      );
    });
  }
}
