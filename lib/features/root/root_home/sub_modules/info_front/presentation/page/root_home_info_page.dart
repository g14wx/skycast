import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class RootHomeSettingsPage extends HookConsumerWidget {
  const RootHomeSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = useAppTranslation(context)!;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(translations.madeBy),
            Flexible(child: ClipOval(
              child: CachedNetworkImage(
                fadeInDuration: const Duration(seconds: 1),
                imageUrl: "https://avatars.githubusercontent.com/u/75600781?s=400&u=a37393c8ad7f51d39f29d3dd0c5580b02e0bd769&v=4",
                placeholder: (context, url) {
                  return Container();
                },
                errorWidget: (context, url, error) {
                  return const Icon(Icons.browser_not_supported, size: 64);
                },
                width: 164,
              ),
            )),
            const Text("Carlos Hernandez (g14wx)")
          ],
        ),
      ),
    );
  }
}
