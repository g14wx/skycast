import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root/BloCs/weather_setup_bloc/weather_setup_bloc.dart';
import 'package:skycast/features/root/root/presentation/screens/failed_setup_screen.dart';
import 'package:skycast/features/root/root/presentation/screens/loading_setup_screen.dart';
import 'package:skycast/features/root/root/presentation/screens/success_setup_screen.dart';

class RootPage extends HookConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      BlocProvider.of<WeatherSetupBloc>(context).add(const WeatherSetupEvent.getConditionTranslationsList());
      return null;
    }, []);

    return Scaffold(
        body: BlocConsumer<WeatherSetupBloc, WeatherSetupState>(
      builder: (context, state) {
        return state.map(
          loading: (value) {
            return const LoadingSetupScreen();
          },
          success: (value) {
            return const SuccessSetupScreen();
          },
          failed: (value) {
            return FailedSetupScreen(
              msg: value.failedMsg,
            );
          },
        );
      },
      listener: (context, state) {},
    ));
  }
}
