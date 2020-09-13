import 'package:get/get.dart';

class IntervalInputController extends GetxController {
  Duration interval;

  void setInterval(value) {
    interval = value;
    update();
  }
}
