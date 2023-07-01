import 'package:flutter/material.dart';
import 'package:moon_art/presentation/navigation/routes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar(this.currentTab, this.onTabChanged, {super.key});

  String currentTab;
  final ValueChanged<String> onTabChanged;
  final List<String> bottomNavigationItems =
      Routes.bottomNavigator.keys.toList();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavigationItems
          .map((item) => BottomNavigationBarItem(
              label: item, icon: const Icon(Icons.account_balance)))
          .toList(),
      currentIndex: bottomNavigationItems.indexOf(currentTab),
      onTap: (index) => {
        currentTab = bottomNavigationItems[index],
        onTabChanged(currentTab),
      },
    );
  }
}
