import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/manageakun_controller.dart';

class ManageakunView extends GetView<ManageakunController> {
  const ManageakunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage account'),
      ),
      body: Expanded(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 32.0,
                ),
                title: const Text('Kweku Frimpong'),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.check_circle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
