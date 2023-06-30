import 'package:flutter/material.dart';
import 'package:moon_art/di/service_locator.dart';
import 'package:moon_art/presentation/pages/home/home_page.dart';

import 'presentation/navigation/routes.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: Routes.bottomNavigator,
    );
  }
}
