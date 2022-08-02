import 'package:get/get.dart';

import '../controllers/addpayment_controller.dart';

class AddpaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddpaymentController>(
      () => AddpaymentController(),
    );
  }
}
