import 'package:flutter/material.dart';

class DefaultConstrainedBox extends StatelessWidget {
  final Widget child;
  const DefaultConstrainedBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints.loose(const Size(500, 500)),
        child: Container(
          height: 500,
          width: 500,
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(10))),
          child: child,
        ));
  }
}
