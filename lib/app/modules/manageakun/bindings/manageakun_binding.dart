import 'package:get/get.dart';

import '../controllers/manageakun_controller.dart';

class ManageakunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManageakunController>(
      () => ManageakunController(),
    );
  }
}
