import 'package:get/get.dart';

import '../controllers/conn_page_controller.dart';

class ConnPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConnPageController>(
      () => ConnPageController(),
    );
  }
}
