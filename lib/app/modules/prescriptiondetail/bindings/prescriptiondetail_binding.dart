import 'package:get/get.dart';

import '../controllers/prescriptiondetail_controller.dart';

class PrescriptiondetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrescriptiondetailController>(
      () => PrescriptiondetailController(),
    );
  }
}
