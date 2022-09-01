import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/prescriptions_controller.dart';

class PrescriptionsView extends GetView<PrescriptionsController> {
  const PrescriptionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Prescriptions',
                  style: GoogleFonts.nunito(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'assets/images/opennew.png',
                  fit: BoxFit.cover,
                  width: 24.0,
                  height: 24.0,
                ),
              ],
            ),
          ),
          Container(
            height: 52.0,
            margin: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Search'),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: InkWell(
              onTap: () {
                Get.toNamed('/prescriptiondetail');
              },
              child: Card(
                color: Colors.blue,
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/plist.png',
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                  ),
                  title: Text(
                    '#202',
                    style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Prescribed by Dr.Jason Brown Jnr.',
                    style: GoogleFonts.nunito(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Get.toNamed('/prescriptiondetail');
                    },
                    icon: const Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
