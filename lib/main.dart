import 'package:flutter/material.dart';
import 'package:moon_art/di/service_locator.dart';
import 'package:moon_art/presentation/pages/main_page/main_page.dart';

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
      home: MainPage(),
      routes: Routes.bottomNavigator,
    );
  }
}
