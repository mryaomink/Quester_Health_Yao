import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneNumController = TextEditingController();
  TextEditingController passControllers = TextEditingController();
  TextEditingController confPassController = TextEditingController();

  var isChecked = false.obs;
}
