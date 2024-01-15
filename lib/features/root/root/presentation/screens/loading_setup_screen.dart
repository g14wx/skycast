import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';
import 'package:skycast/shared/ui/widgets/default_constrained_box.dart';

class LoadingSetupScreen extends StatelessWidget {
  const LoadingSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: DefaultConstrainedBox(child: Lottie.asset(Assets.loading1)));
  }
}
