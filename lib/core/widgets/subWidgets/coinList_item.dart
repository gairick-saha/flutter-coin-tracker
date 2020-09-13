import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoinList extends StatelessWidget {
  final icon;
  final title;
  final subtitle;
  CoinList({Key key, this.icon, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Get.width * 0.05,
        right: Get.width * 0.05,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).disabledColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: FadeInImage(
          placeholder: AssetImage(
            'assets/images/stars.png',
          ),
          image: NetworkImage(this.icon, scale: 1.5),
        ),
        title: Text(
          this.title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: Get.width * 0.05,
            fontWeight: FontWeight.bold,
            color: Color(0xffE8EDF4),
          ),
        ),
        subtitle: Text(
          this.subtitle,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: Get.width * 0.04,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
