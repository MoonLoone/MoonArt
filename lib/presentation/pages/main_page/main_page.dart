import 'dart:developer';
import 'dart:developer' as developer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moon_art/presentation/navigation/routes.dart';

import '../../../di/service_locator.dart';
import '../../navigation/bottom_navigation.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentWidget = "home";

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
