import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_health/app/modules/editprofile/controllers/editprofile_controller.dart';

class YaoFormDua extends StatefulWidget {
  const YaoFormDua({Key? key}) : super(key: key);

  @override
  State<YaoFormDua> createState() => _YaoFormDuaState();
}

class _YaoFormDuaState extends State<YaoFormDua> {
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController smokeController = TextEditingController();
  final TextEditingController doyouController = TextEditingController();
  final TextEditingController drinkController = TextEditingController();
  final TextEditingController howdrinkController = TextEditingController();
  final TextEditingController excerciceController = TextEditingController();
  final edtController = Get.put(EditprofileController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Page Dua'),
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
            TextField(
              controller: occupationController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Occupation"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: smokeController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Do you smoke?"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: doyouController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "How often do you smoke in a week?"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: drinkController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Do you drink?"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: howdrinkController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "How often do you drink in a week?"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              controller: excerciceController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "How often do you exercise?"),
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
            ),
          ],
        ),
      ),
    );
  }
}
