import 'package:get/get.dart';
import 'package:githunfapp/models/giihub.models.dart';

import '../provider/github_providers.dart';



class APiController extends GetxController {
  Rx<ApiModels> getdata = ApiModels().obs;
RxBool isloading = false.obs;
  Future<void> getLoad() async {
    try {
      isloading(true);
      final response = await ApiService().loaddata();

      if (response != null) {
        getdata.value = response;
      }
      isloading(false);
    } catch (e) {
      isloading(false);
      print(e);
    }
  }

  @override
  void onInit() {
    getLoad();
    super.onInit();
  }
}
