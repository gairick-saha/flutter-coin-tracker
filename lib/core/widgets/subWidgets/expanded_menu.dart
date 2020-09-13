import 'package:cryptoTracker/core/controllers/setting_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpandedMenu extends StatelessWidget {
  ExpandedMenu({Key key}) : super(key: key);
  final TimeOfDay _currentTime = TimeOfDay.now();
  final DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    print(_currentTime);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: Get.height * 0.02,
        ),
        Expanded(
          child: CupertinoDatePicker(
            backgroundColor: Theme.of(context).disabledColor,
            mode: CupertinoDatePickerMode.time,
            initialDateTime: _dateTime,
            onDateTimeChanged: (value) {
              print(value);
            },
          ),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(
            bottom: Get.height * 0.02,
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
                  print('object');
                },
              ),
              SizedBox(
                width: Get.width * 0.02,
              ),
              GetBuilder<SettingController>(
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
                          color: Theme.of(context).accentColor,
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
                    print('object');
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
