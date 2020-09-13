import 'package:cryptoTracker/core/widgets/addCurrency.dart';
import 'package:cryptoTracker/core/widgets/setting.dart';
import 'package:cryptoTracker/core/widgets/tracker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  int _currentTab;
  Widget _currentScreen;
  List<Widget> _screens = [
    Tracker(),
    Setting(),
    AddCurrency(),
  ];

  @override
  void onInit() {
    _currentScreen = Tracker();
    _currentTab = 0;
    super.onInit();
  }

  void setScreen(int tab) {
    _currentTab = tab;
    _currentScreen = _screens[tab];
    update();
  }

  get currentTab => _currentTab;
  get currentScreen => _currentScreen;
}
