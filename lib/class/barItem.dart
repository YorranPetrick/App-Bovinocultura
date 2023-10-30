import 'package:flutter/material.dart';

BottomNavigationBarItem barItem(String assets) {
  return BottomNavigationBarItem(
      icon: Image.asset(assets, height: 30, color: Colors.black),
      label: '',
      activeIcon: Image.asset(assets, height: 30, color: Colors.black));
}
