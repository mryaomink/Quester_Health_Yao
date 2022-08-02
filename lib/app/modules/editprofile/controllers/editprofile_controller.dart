import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_dua.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_one.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_tiga.dart';

class EditprofileController extends GetxController {
  FormData? data;
  var selectedIndexPage = 0.obs;
  var currentValue = 1.obs;
  var maxPages = 3.obs;
  bool get islastpage => selectedIndexPage.value == editPage.length - 1;

  String selected = 'How often do you smoke in a week?';
  List<dynamic> dropdownPageOne = [];
  List<dynamic> dropdownPageTwo = [];
  @override
  void onInit() {
    super.onInit();
    dropdownPageOne.add({"id": 1, "label": "Once a week"});
    dropdownPageOne.add({"id": 2, "label": "2-5 times a week."});
    dropdownPageOne.add({"id": 3, "label": "5-10 times a week"});
    dropdownPageOne.add({"id": 4, "label": "More than 10 times a week"});
    dropdownPageTwo.add({"id": 1, "label": "More than 10 times a week"});
    dropdownPageTwo.add({"id": 2, "label": "2-5 times a week."});
  }

  String? selectedDrop;

  void setSelected(RxString value) {
    selected = value.string;
  }

  var pageController = PageController();
  List<Widget> editPage = const [
    YaoFormOne(),
    YaoFormDua(),
    YaoFormTiga(),
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
