import 'package:get/get.dart';

import '../controllers/api_handling_ex_controller.dart';

class ApiHandlingExBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApiHandlingExController>(
      () => ApiHandlingExController(),
    );
  }
}
