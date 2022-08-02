import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/editprofile_controller.dart';

class YaoFormTiga extends StatefulWidget {
  const YaoFormTiga({Key? key}) : super(key: key);

  @override
  State<YaoFormTiga> createState() => _YaoFormTigaState();
}

class _YaoFormTigaState extends State<YaoFormTiga> {
  final TextEditingController alergiController = TextEditingController();
  final TextEditingController medicationController = TextEditingController();
  final TextEditingController kronologiController = TextEditingController();
  final TextEditingController surgeryController = TextEditingController();
  final TextEditingController bloodtransController = TextEditingController();
  final edtController = Get.put(EditprofileController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Page Tiga'),
              Text(
                "${(edtController.selectedIndexPage + 1 % edtController.maxPages.value).toStringAsFixed(0)}/${edtController.maxPages}",
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearProgressIndicator(
                color: Colors.green,
                backgroundColor: Colors.white,
                value: edtController.currentValue.value.toDouble() /
                    edtController.maxPages.value,
                minHeight: 15.0,
              )
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: alergiController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Allergies"),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: medicationController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Current medications"),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: kronologiController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Chronic Diseases"),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: surgeryController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Have you undergone a surgery before?"),
          ),
          const SizedBox(
            height: 15.0,
          ),
          TextField(
            controller: bloodtransController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: "Blood transfusion"),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            height: 52.0,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                edtController.pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease);
              },
              child: const Text('Done'),
            ),
          ),
        ],
      ),
    );
  }
}
