import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_health/app/routes/app_pages.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/schdule_controller.dart';

class SchduleView extends GetView<SchduleController> {
  const SchduleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            'Schedule Appointment',
            style: GoogleFonts.nunito(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                reverse: false,
                controller: controller.pageController,
                onPageChanged: (index) {
                  controller.selectedIndexPage =
                      ((controller.currentValue + 1) /
                          controller.maxPages.value.toDouble()) as RxInt;
                },
                children: [
                  ScheduleOne(),
                  ScheduleTwo(),
                  ScheduleTiga(),
                ],
              ),
            ),
          ],
        ));
  }
}

class ScheduleOne extends StatelessWidget {
  final schduleController = Get.put(SchduleController());
  ScheduleOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Health condition',
                  style: GoogleFonts.nunito(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${(schduleController.selectedIndexPage + 1 % schduleController.maxPages.value).toStringAsFixed(0)}/${schduleController.maxPages}",
                ),
              ],
            ),
            const SizedBox(
              height: 9.0,
            ),
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    value: schduleController.currentValue.value.toDouble() /
                        schduleController.maxPages.value,
                    minHeight: 4.0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:
                      "I’ve been having severe headaches especially d..."),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Less than a week"),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 52.0,
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff38B6FF),
                ),
                onPressed: () {
                  schduleController.pageController.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.ease);
                },
                child: Text('Continue',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScheduleTwo extends StatelessWidget {
  final schduleController = Get.put(SchduleController());

  ScheduleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose appointment type',
                  style: GoogleFonts.nunito(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${(schduleController.selectedIndexPage + 1 % schduleController.maxPages.value).toStringAsFixed(0)}/${schduleController.maxPages}",
                ),
              ],
            ),
            const SizedBox(
              height: 9.0,
            ),
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    value: schduleController.currentValue.value.toDouble() /
                        schduleController.maxPages.value,
                    minHeight: 4.0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 52.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  'I already have a doctor in mind',
                  style:
                      GoogleFonts.nunito(fontSize: 16.0, color: Colors.black),
                )),
            const SizedBox(
              height: 15.0,
            ),
            InkWell(
              onTap: () => Get.toNamed("/caridoc"),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 52.0,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Text(
                  'Find a doctor for me',
                  style:
                      GoogleFonts.nunito(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            const Spacer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 52.0,
              margin: const EdgeInsets.symmetric(vertical: 24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff38B6FF),
                ),
                onPressed: () {
                  schduleController.pageController.nextPage(
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.ease);
                },
                child: Text(
                  'Continue',
                  style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ScheduleTiga extends StatelessWidget {
  final schduleController = Get.put(SchduleController());

  ScheduleTiga({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select date and time',
                    style: GoogleFonts.nunito(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "${(schduleController.selectedIndexPage + 1 % schduleController.maxPages.value).toStringAsFixed(0)}/${schduleController.maxPages}",
                  ),
                ],
              ),
              const SizedBox(
                height: 9.0,
              ),
              Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinearProgressIndicator(
                      color: Colors.green,
                      backgroundColor: Colors.white,
                      value: schduleController.currentValue.value.toDouble() /
                          schduleController.maxPages.value,
                      minHeight: 4.0,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Select date and time"),
              ),
              const SizedBox(height: 15.0),
              TableCalendar(
                firstDay: DateTime.utc(2020, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text(
                'Available time slots',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 104,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('11.00 am'),
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xff1F95AF),
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('11.30 am'),
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('12.00 am'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 104,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('03.00 pm'),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('03.30 pm'),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('04.00 pm'),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 104,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('06.00 pm'),
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('06.30 pm'),
                  ),
                  Container(
                    width: 104,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: const Text('07.00 pm'),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'Each session lasts for 30 minutes',
                style: GoogleFonts.nunito(color: Colors.black),
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 52.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff38B6FF),
                  ),
                  onPressed: () {
                    Get.offAndToNamed(Routes.NAVBAR);
                  },
                  child: Text(
                    'Done',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
