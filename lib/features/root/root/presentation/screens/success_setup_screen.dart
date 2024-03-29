import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/router/constants/app_routes.dart';
import 'package:skycast/shared/hooks/use_app_translations.dart';

class SuccessSetupScreen extends HookConsumerWidget {
  const SuccessSetupScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = useAppTranslation(context)!;
    useEffect(() {
      Future.delayed(const Duration(seconds: 2)).then((value) {
        Navigator.of(context).pushReplacementNamed(AppRoutes.rootHome);
      });
      return null;
    }, []);
    return Center(
      child: AnimatedTextKit(repeatForever: false, isRepeatingAnimation: false, animatedTexts: [
        FlickerAnimatedText(
          translations.welcome,
          textStyle: GoogleFonts.raleway(fontSize: 50),
        ),
      ]),
    );
  }
}
