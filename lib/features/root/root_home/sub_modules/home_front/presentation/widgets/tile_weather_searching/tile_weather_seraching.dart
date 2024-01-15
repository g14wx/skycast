import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/BloCs/get_weather_bloc/get_weather_bloc.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/widgets/auto_complete_custom.dart';

class TileWeatherSeraching extends HookConsumerWidget {
  const TileWeatherSeraching({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useRef('');
    return ConstrainedBox(
      constraints: BoxConstraints.loose(const Size(450, 50)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 2.5),
            borderRadius: const BorderRadius.all(Radius.circular(25))),
        child: InputDecorator(
            decoration: InputDecoration(
              border: InputBorder.none,
              suffixIcon: IconButton(
                  onPressed: () {
                    BlocProvider.of<GetWeatherBloc>(context).add(GetWeatherEvent.getWeather(query: query.value));
                  },
                  icon: const Icon(Icons.search)),
              contentPadding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              focusColor: Colors.transparent,
            ),
            child: AutocompleteCustom(
              onSelected: (queryCustom) {
                BlocProvider.of<GetWeatherBloc>(context).add(GetWeatherEvent.getWeather(query: queryCustom));
              },
              onChange: (String queryCustom) {
                query.value = queryCustom;
              },
            )),
      ),
    );
  }
}
