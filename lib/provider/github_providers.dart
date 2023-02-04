import 'package:get/get.dart';
import 'package:http/http.dart ' as http;

import '../models/giihub.models.dart';

class ApiService {
  Future<ApiModels?> loaddata() async {
    http.Response response =
        await http.get(Uri.parse('https://api.github.com/users/mojombo'));

    if (response.statusCode == 200) {
      return ApiModels.fromJson(response.body as Map<String, dynamic>);
    }
    return Future.error('error');
  }
}
