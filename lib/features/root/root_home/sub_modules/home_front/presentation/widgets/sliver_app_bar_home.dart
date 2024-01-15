import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/features/root/root_home/sub_modules/home_front/presentation/widgets/weather_look_up_widgets/root_weather_look_widgets.dart';

class SliverAppBarHome extends HookConsumerWidget {
  const SliverAppBarHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
      expandedHeight: 400, // Set the height of the header when expanded
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // Add the background image
            Image.network(
              'https://images.unsplash.com/photo-1469474968028-56623f02e42e?q=40',
              fit: BoxFit.cover,
            ),
            // Add the overlay with opacity
            Container(
              color: Colors.black.withOpacity(0.3),
            ),
            const Align(alignment: Alignment.center, child: RootWeatherLookWidgets()),
            // Add the title with scaling and fading effect
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 1.0, end: 0.0),
                  duration: const Duration(milliseconds: 500),
                  builder: (BuildContext context, double value, Widget? child) {
                    return Transform.scale(
                      scale: 1 + value, // Scale factor for the title
                      child: Opacity(
                        opacity: 1 - value, // Opacity factor for the title
                        child: const Text(
                          'Skycast',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      // Other properties like pinned, floating, elevation, etc.
      // can be customized as needed
    );
  }
}
