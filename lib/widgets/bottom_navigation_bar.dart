import 'package:coffee_app/utilities/constants.dart';
import 'package:flutter/material.dart';

Widget bottomNavBar({
  required List<BottomNavigationBarItem> navigationItems,
  required Function(int) onTap,
  required int currentIndex,
}) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: currentIndex,
    onTap: onTap,
    backgroundColor: kBackgroundColor,
    selectedItemColor: kPrimary,
    items: navigationItems,
    unselectedItemColor: kUnselectedColor,
  );
}
