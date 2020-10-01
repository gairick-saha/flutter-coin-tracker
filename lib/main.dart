import 'package:cryptoTracker/core/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currency Tracker',
      theme: ThemeData(
        primaryColor: Color(0xff294198),
        accentColor: Color(0xffFA9D29),
        disabledColor: Colors.blueGrey,
        brightness: Brightness.light,
      ),
      home: DashBoard(),
    );
  }
}
