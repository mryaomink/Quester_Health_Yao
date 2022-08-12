import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_health/app/routes/app_pages.dart';

import '../controllers/security_controller.dart';

class SecurityView extends GetView<SecurityController> {
  const SecurityView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.offAndToNamed(Routes.NAVBAR);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Security',
            style: GoogleFonts.nunito(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ListTile(
              onTap: () {
                Get.toNamed('/changepass');
              },
              leading: const Icon(Icons.lock),
              title: const Text('Change Password'),
              trailing: const Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.face),
              title: Text('Enable Facial ID'),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text('Enable Fingerprint Login'),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ));
  }
}
