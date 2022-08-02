import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2FAFF),
      body: Center(
        child: Image.asset('assets/images/logobesar.png', fit: BoxFit.cover),
      ),
    );
  }
}
