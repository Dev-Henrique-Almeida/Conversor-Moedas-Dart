import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'app/views/home_view.dart';

main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const AppWidget()));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const HomeView(),
    );
  }
}
