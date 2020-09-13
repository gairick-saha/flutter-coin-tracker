import 'package:cryptoTracker/core/constants/constants.dart';
import 'package:http/http.dart' as http;

class Api {
  static Api _instance = Api.internal();
  Api.internal();
  factory Api() => _instance;

  final headers = {'X-CMC_PRO_API_KEY': Constant.apiKey};
  final baseUrl = Constant.baseUrl;

  Future<dynamic> getData() async {
    final response = await http.get(
      baseUrl,
      headers: headers,
    );
    return response.body;
  }
}
