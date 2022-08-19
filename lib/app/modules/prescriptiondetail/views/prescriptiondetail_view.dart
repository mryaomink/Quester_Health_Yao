import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/prescriptiondetail_controller.dart';

class PrescriptiondetailView extends GetView<PrescriptiondetailController> {
  const PrescriptiondetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PrescriptiondetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PrescriptiondetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
