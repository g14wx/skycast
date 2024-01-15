import 'package:flutter/material.dart';

class WeatherInfoTile extends StatelessWidget {
  final BoxConstraints parentBoxConstraints;
  const WeatherInfoTile({super.key, required this.parentBoxConstraints});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
          constraints: BoxConstraints.loose(Size(parentBoxConstraints.maxWidth - 15, 120)),
          child: Container(
            width: parentBoxConstraints.maxWidth - 15,
            height: 120,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                const Flexible(child: Icon(Icons.terrain_rounded)),
                Flexible(child: Text("${parentBoxConstraints.maxWidth} x ${parentBoxConstraints.maxHeight}"))
              ],
            ),
          )),
    );
  }
}
