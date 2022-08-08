import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/security_controller.dart';

class SecurityView extends GetView<SecurityController> {
  const SecurityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecurityView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SecurityView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
