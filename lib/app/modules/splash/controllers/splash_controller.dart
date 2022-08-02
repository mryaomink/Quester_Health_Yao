import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quest_health/app/modules/splash/models/splash_model.dart';

class SplashController extends GetxController {
  var selectedIndexPage = 0.obs;
  var pageController = PageController();
  bool get islastpage => selectedIndexPage.value == splashPage.length - 1;
  List<SplashModel> splashPage = [
    SplashModel(
      "assets/images/satu.png",
      "Find doctors at your nearest location",
      "Easily find experienced and professional doctors with less effort",
    ),
    SplashModel(
      "assets/images/dua.png",
      "Schedule online calls with doctors",
      "Online medical consultaions via video call, voice call, SMS.",
    ),
    SplashModel(
      "assets/images/tiga.png",
      "Online appointments made easier",
      "Book appointments with doctors at the comfort of your home",
    ),
  ];

  nextPage() {
    if (islastpage) {
      // navigasi ke auth Screens
      Get.toNamed('/auth');
    } else {
      pageController.nextPage(
          duration: 300.milliseconds, curve: Curves.easeInOut);
    }
  }
}
