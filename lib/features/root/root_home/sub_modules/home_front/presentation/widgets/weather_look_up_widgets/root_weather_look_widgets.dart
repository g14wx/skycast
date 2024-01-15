import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/widgets/tile_weather_searching/tile_weather_seraching.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/widgets/weather_look_up_widgets/success_weather.dart';

class RootWeatherLookWidgets extends StatelessWidget {
  const RootWeatherLookWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetWeatherBloc, GetWeatherState>(
      builder: (context, state) {
        return state.maybeMap(
          getWeatherError: (value) {
            Future.delayed(const Duration(seconds: 2)).then((value) {
              BlocProvider.of<GetWeatherBloc>(context).add(const GetWeatherEvent.resetState());
            });

            return Center(
              child: Lottie.asset(Assets.error1),
            );
          },
          getWeatherLoading: (value) {
            return Center(
              child: Lottie.asset(Assets.loading2),
            );
          },
          getWeatherSuccess: (value) {
            return Center(
              child: SuccessWeather(
                currentWeather: value.currentWeather,
              ),
            );
          },
          orElse: () {
            return const TileWeatherSeraching();
          },
        );
      },
      listener: (context, state) {},
    );
  }
}
