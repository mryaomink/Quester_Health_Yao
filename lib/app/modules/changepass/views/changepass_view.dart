import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:quest_health/app/routes/app_pages.dart';

import '../controllers/changepass_controller.dart';

class ChangepassView extends GetView<ChangepassController> {
  const ChangepassView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Change password',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
        child: Column(
          children: [
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text('Current Password'),
                  hintText: "Current Password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(),
                  label: Text('New password'),
                  hintText: "New Password",
                  hintStyle: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(),
                label: Text('Confirm new password'),
                hintText: "Confirm new password",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 52.0,
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {
                  Get.offAllNamed(Routes.NAVBAR);
                },
                child: const Text('Save Changes'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
