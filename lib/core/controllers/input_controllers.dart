import 'package:get/get.dart';

class IntervalInputController extends GetxController {
  // TimeOfDay _currentTime = TimeOfDay.now();
  // // DateTime interval;
  Duration interval;

  void setInterval(value) {
    interval = value;
    update();
  }
}
