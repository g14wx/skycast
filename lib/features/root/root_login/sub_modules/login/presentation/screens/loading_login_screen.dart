import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';

class LoadingLoginScreen extends StatelessWidget {
  const LoadingLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Lottie.asset(Assets.loading1),
        ],
      ),
    );
  }
}
