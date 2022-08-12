import 'package:get/get.dart';

import '../controllers/videoscreen_controller.dart';

class VideoscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoscreenController>(
      () => VideoscreenController(),
    );
  }
}
