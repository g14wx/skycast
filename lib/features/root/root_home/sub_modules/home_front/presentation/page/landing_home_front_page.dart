import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skycast/shared/ui/app_bar/app_bar.dart';

class LandingHomeFrontPage extends HookConsumerWidget {
  const LandingHomeFrontPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: BaseAppBar(
        title: Text(""),
        leading: Icon(Icons.web, size: 10,),
        appBar: AppBar(),
      ),
      body: const Center(
        child: Text("Landing Home Front Page"),
      ),
    );
  }
}
