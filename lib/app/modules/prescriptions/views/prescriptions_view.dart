import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prescriptions_controller.dart';

class PrescriptionsView extends GetView<PrescriptionsController> {
  const PrescriptionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrescriptionsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'This Page Still Development',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
