import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddCurrency extends StatelessWidget {
  AddCurrency({Key key}) : super(key: key);
  final TextEditingController _cryptoCurrencyInput = TextEditingController();

  // final List<QuestionModel> _question = List<QuestionModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          'Add Currency',
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
      extendBody: true,
      body: Container(
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
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.04,
                  vertical: Get.height * 0.02,
                ),
                child: ListView.builder(
                    itemCount: 4,
                    reverse: true,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              minHeight: Get.width * 0.07,
                            ),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(Get.width * 0.1),
                              ),
                            ),
                            margin: EdgeInsets.symmetric(
                              vertical: Get.height * 0.01,
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: Get.height * 0.01,
                              horizontal: Get.width * 0.03,
                            ),
                            child: Text(
                              'Demo Data',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: Get.width * 0.04,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: Get.height * 0.11,
          left: Get.width * 0.07,
          right: Get.width * 0.07,
        ),
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: () {
                print(_cryptoCurrencyInput.text);
              },
              icon: FaIcon(
                FontAwesomeIcons.locationArrow,
                color: Theme.of(context).disabledColor,
              ),
            ),
            fillColor: Color(0xff1b1c1e),
            filled: true,
            hintText: 'Type something....',
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: Get.width * 0.04,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.normal,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            // border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
