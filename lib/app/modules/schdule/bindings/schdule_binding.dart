import 'package:get/get.dart';

import '../controllers/schdule_controller.dart';

class SchduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchduleController>(
      () => SchduleController(),
    );
  }
}
