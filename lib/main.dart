import 'package:flutter/material.dart';
import 'package:flutter_adaptive_app/screens/list_butterflies.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ListButterflies(),
      );
    });
  }
}
