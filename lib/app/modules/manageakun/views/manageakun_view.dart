import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/manageakun_controller.dart';

class ManageakunView extends GetView<ManageakunController> {
  const ManageakunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage account',
          style: GoogleFonts.nunito(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
