import 'package:flutter/material.dart';
import 'package:moon_art/presentation/navigation/routes.dart';

import '../../navigation/bottom_navigation.dart';

class MainPage extends StatefulWidget {

  const MainPage({super.key});

  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentWidget = Routes.bottomNavigator.keys.first;

  void _selectWidget(String newWidget) {
    setState(() => _currentWidget = newWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:
            CustomBottomNavigationBar(_currentWidget, _selectWidget),
        body: Routes.bottomNavigator[_currentWidget]!(context));
  }
}
