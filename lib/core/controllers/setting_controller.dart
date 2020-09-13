import 'package:flutter_expanded_tile/tileController.dart';
import 'package:get/get.dart';

class SettingController extends GetxController {
  // bool isDropdownOpend = false;
  final ExpandedTileController _expandedTileController =
      ExpandedTileController();

  ExpandedTileController get expandeController => _expandedTileController;
}
