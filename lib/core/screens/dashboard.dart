import 'package:cryptoTracker/core/controllers/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DashBoard extends GetWidget<DashboardController> {
  DashBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DashboardController currentWidget = Get.put(DashboardController());
    return Scaffold(
      bottomNavigationBar: GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (_) => BottomAppBar(
          color: Color(0xff1b1c1e),
          clipBehavior: Clip.antiAlias,
          shape: AutomaticNotchedShape(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
            ),
            _.currentTab == 2
                ? null
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
          ),
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: FaIcon(FontAwesomeIcons.home),
                  iconSize: _.currentTab == 0 ? 30.0 : 25.0,
                  color: _.currentTab == 0
                      ? Theme.of(context).accentColor
                      : Theme.of(context).disabledColor,
                  onPressed: () {
                    currentWidget.setScreen(0);
                  },
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: FaIcon(Icons.settings),
                  iconSize: _.currentTab == 1 ? 30.0 : 25.0,
                  color: _.currentTab == 1
                      ? Theme.of(context).accentColor
                      : Theme.of(context).disabledColor,
                  onPressed: () {
                    currentWidget.setScreen(1);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GetBuilder<DashboardController>(
        builder: (_) => Padding(
          padding: EdgeInsets.all(2.0),
          child: _.currentTab == 2
              ? null
              : FloatingActionButton(
                  backgroundColor: Theme.of(context).primaryColor,
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  child: Icon(
                    Icons.add,
                    color: Color(0xffE8EDF4),
                  ),
                  onPressed: () {
                    currentWidget.setScreen(2);
                  },
                ),
        ),
      ),
      extendBody: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        child: GetBuilder<DashboardController>(
          builder: (_) => _.currentScreen,
        ),
      ),
    );
  }
}
