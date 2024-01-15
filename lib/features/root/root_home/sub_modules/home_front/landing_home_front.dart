import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/page/landing_home_front_page.dart';

class LandingHomeFront extends StatelessWidget {
  const LandingHomeFront({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherBloc, GetWeatherState>(
      builder: (context, state) {
        return LandingHomeFrontPage(
          weatherState: state,
        );
      },
    );
  }
}
