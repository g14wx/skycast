import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/features/root/root/BloCs/weather_setup_bloc/weather_setup_bloc.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';
import 'package:skycast/shared/ui/widgets/default_constrained_box.dart';

class FailedSetupScreen extends HookConsumerWidget {
  final String msg;
  const FailedSetupScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localizations = useAppTranslation(context)!;
    return Center(
        child: DefaultConstrainedBox(
            child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(Assets.error1, repeat: false),
          Text(msg),
          OutlinedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
            ),
            onPressed: () {
              BlocProvider.of<WeatherSetupBloc>(context).add(const WeatherSetupEvent.getConditionTranslationsList());
            },
            child: Text(localizations.tryAgain),
          )
        ],
      ),
    )));
  }
}
