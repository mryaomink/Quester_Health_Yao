import 'dart:async';

import 'package:get/get.dart';
import 'package:quest_health/app/routes/app_pages.dart';

class IntroController extends GetxController {
  @override
  @override
  void onReady() {
    super.onReady();
    loading();
  }

  Future<void> loading() async {
    Timer(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.SPLASH);
    });
  }
}
