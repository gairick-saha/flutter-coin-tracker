import 'package:cryptoTracker/core/controllers/input_controllers.dart';
import 'package:cryptoTracker/core/controllers/setting_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Setting extends StatelessWidget {
  Setting({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Setting',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: Get.width * 0.08,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Color(0xffE8EDF4),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff000001),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
        ),
        margin: EdgeInsets.only(
          top: Get.height * 0.02,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: Get.width * 0.05,
                horizontal: Get.width * 0.05,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).disabledColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: GetBuilder<SettingController>(
                init: SettingController(),
                builder: (_) => Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      child: ExpandedTile(
                        controller: _.expandeController,
                        centerHeaderTitle: false,
                        headerColor: Theme.of(context).disabledColor,
                        contentBackgroundColor: Theme.of(context).disabledColor,
                        expandIcon: Icon(
                          FontAwesomeIcons.angleRight,
                          // color: Color(0xffE8EDF4),
                        ),
                        headerSplashColor: Theme.of(context).disabledColor,
                        rotateExpandIcon: true,
                        titlePadding: EdgeInsets.symmetric(
                          vertical: Get.height * 0.0,
                        ),
                        contentPadding: EdgeInsets.all(0.0),
                        title: Text(
                          'Refresh Timer',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: Get.width * 0.06,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        content: Column(
                          children: [
                            // NumberPicker.integer(
                            //   infiniteLoop: true,
                            //   initialValue: 2,
                            //   minValue: 1,
                            //   maxValue: 60,
                            //   onChanged: (value) {
                            //     print(value);
                            //   },
                            // ),
                            SizedBox(
                              height: Get.height * 0.2,
                              child: CupertinoTimerPicker(
                                mode: CupertinoTimerPickerMode.ms,
                                onTimerDurationChanged: (value) {
                                  Get.put(IntervalInputController())
                                      .setInterval(value);
                                },
                              ),
                              // CupertinoDatePicker(
                              //   backgroundColor:
                              //       Theme.of(context).disabledColor,
                              //   mode: CupertinoDatePickerMode.time,
                              //   initialDateTime: _dateTime,
                              //   onDateTimeChanged: (value) {
                              //     Get.put(IntervalInputController())
                              //         .setInterval(value);
                              //   },
                              // ),
                            ),

                            SizedBox(
                              height: Get.height * 0.025,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: Get.height * 0.01,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MaterialButton(
                                    minWidth: Get.width * 0.3,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                      side: BorderSide(
                                        color: Colors.grey,
                                        width: 2,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Text(
                                        'CANCEL',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: Get.width * 0.05,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onPressed: () {
                                      Get.put(SettingController())
                                          .expandeController
                                          .toggle();
                                    },
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.03,
                                  ),
                                  GetBuilder<IntervalInputController>(
                                    init: IntervalInputController(),
                                    builder: (_) => MaterialButton(
                                      minWidth: Get.width * 0.3,
                                      color: Color(0xff294198),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(7.0),
                                        child: Container(
                                          child: Text(
                                            'DONE',
                                            style: TextStyle(
                                              color:
                                                  Theme.of(context).accentColor,
                                              fontSize: Get.width * 0.05,
                                              fontStyle: FontStyle.normal,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onPressed: () {
                                        print(_.interval);
                                        Get.put(SettingController())
                                            .expandeController
                                            .toggle();
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
