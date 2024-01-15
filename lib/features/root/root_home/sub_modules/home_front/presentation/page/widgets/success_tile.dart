import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:skycast/constants/assets.dart';

class SuccessTile extends HookConsumerWidget {
  final Widget title;
  final Widget icon;

  final bool not;
  const SuccessTile({super.key, required this.title, required this.icon, this.not = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: title,
        ),
        Flexible(
            child: Stack(
          children: [
            Positioned.fill(child: icon),
            if (not)
              Positioned.fill(
                  child: Lottie.asset(
                Assets.forbidden,
              )),
          ],
        )),
      ],
    ));
  }
}
