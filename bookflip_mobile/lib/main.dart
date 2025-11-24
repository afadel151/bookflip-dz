import 'package:bookflip_mobile/ui/core/themes/default.dart';
import 'package:bookflip_mobile/ui/guest/widgets/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppDesign.appTheme,
      home: const GuestHome(),
    );
  }
}

