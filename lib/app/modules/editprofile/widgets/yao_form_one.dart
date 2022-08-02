import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_health/app/modules/editprofile/controllers/editprofile_controller.dart';

class YaoFormOne extends StatefulWidget {
  const YaoFormOne({Key? key}) : super(key: key);

  @override
  State<YaoFormOne> createState() => _YaoFormOneState();
}

class _YaoFormOneState extends State<YaoFormOne> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController bloodController = TextEditingController();
  final TextEditingController mentalController = TextEditingController();
  final TextEditingController emergencyController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  final edtController = Get.put(EditprofileController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Personal Information'),
                  Text(
                    "${(edtController.selectedIndexPage + 1 % edtController.maxPages.value).toStringAsFixed(0)}/${edtController.maxPages}",
                  ),
                ],
              ),
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
              controller: ageController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Age"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: genderController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Gender"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: heightController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Height (cm)"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: weightController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Weight (cm)"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: bloodController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Blood Group"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: mentalController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Mental Status"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: emergencyController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Emergency Contact"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: contactController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Name emergency contract"),
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
                child: const Text('Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
