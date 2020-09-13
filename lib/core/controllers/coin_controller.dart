import 'package:cryptoTracker/core/helper/api.dart';
import 'package:cryptoTracker/core/models/coin_model.dart';
import 'package:get/get.dart';

class CoinController extends GetxController {
  // Rx<CoinModel> _coinModel = CoinModel().obs;
  Api _api = Api();
  bool isLoading = true;
  Status status;
  List<CoinData> coinList = List();

  @override
  void onInit() {
    _api.getData().then((value) {
      CoinModel _coinList = coinModelFromJson(value);
      setData(_coinList);
    });
    super.onInit();
  }

  setData(CoinModel values) {
    print(values.status.runtimeType);
    status = values.status;
    coinList = values.data;
    isLoading = false;
    update();
  }
}
