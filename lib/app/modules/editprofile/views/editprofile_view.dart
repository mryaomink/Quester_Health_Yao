import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_health/app/routes/app_pages.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          backgroundColor: Colors.white,
          title: Text(
            'Edit Profile',
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
                  EditPageOne(),
                  EditPageDua(),
                  EditPageTiga(),
                ],
              ),
            ),
          ],
        ));
  }
}

class EditPageOne extends StatelessWidget {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController bloodController = TextEditingController();
  final TextEditingController mentalController = TextEditingController();
  final TextEditingController emergencyController = TextEditingController();
  final TextEditingController contactController = TextEditingController();

  final edtController = Get.put(EditprofileController());
  EditPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Personal Information',
                    style: GoogleFonts.nunito(
                        fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const Text('1/3'),
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
                      value: edtController.currentValue.value.toDouble() /
                          edtController.maxPages.value,
                      minHeight: 4.0,
                    )
                  ],
                ),
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
                    border: OutlineInputBorder(),
                    hintText: "Emergency Contact"),
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
              Container(
                width: double.infinity,
                height: 52.0,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff38B6FF),
                  ),
                  onPressed: () {
                    edtController.pageController.nextPage(
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
      ),
    );
  }
}

class EditPageDua extends StatelessWidget {
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController smokeController = TextEditingController();
  final TextEditingController doyouController = TextEditingController();
  final TextEditingController drinkController = TextEditingController();
  final TextEditingController howdrinkController = TextEditingController();
  final TextEditingController excerciceController = TextEditingController();
  final edtController = Get.put(EditprofileController());
  EditPageDua({Key? key}) : super(key: key);

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
                Text(
                  'Lifestyle',
                  style: GoogleFonts.nunito(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text('2/3'),
              ],
            ),
            const SizedBox(
              height: 9.0,
            ),
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    value: edtController.currentValue.value.toDouble() /
                        edtController.maxPages.value,
                    minHeight: 4.0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: drinkController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Occupation"),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
              context,
              "Do you smoke?",
              edtController.selectedDrop,
              edtController.dropdownPageOne,
              (onChangeValue) {},
              (onValidate) {
                if (onValidate == null) {
                  return "Please select item";
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 5.0,
              optionValue: "id",
              optionLabel: "label",
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
                context,
                "How often do you smoke in a week?",
                edtController.selectedDrop,
                edtController.dropdownPageOne,
                (onChangeValue) {}, (onValidate) {
              if (onValidate == null) {
                return "Please select item";
              }
              return null;
            },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 5.0,
                optionValue: "id",
                optionLabel: "label",
                hintFontSize: 12.0),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
              context,
              "Do you drink?",
              edtController.selectedDrop,
              edtController.dropdownPageOne,
              (onChangeValue) {},
              (onValidate) {
                if (onValidate == null) {
                  return "Please select item";
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 5.0,
              optionValue: "id",
              optionLabel: "label",
            ),
            const SizedBox(
              height: 15.0,
            ),
            // TextField(
            //   controller: drinkController,
            //   decoration: const InputDecoration(
            //       border: OutlineInputBorder(), hintText: "Do you drink?"),
            // ),
            FormHelper.dropDownWidget(
                context,
                "How often do you drink in a week?",
                edtController.selectedDrop,
                edtController.dropdownPageTwo,
                (onChangeValue) {}, (onValidate) {
              if (onValidate == null) {
                return "Please select item";
              }
              return null;
            },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 5.0,
                optionValue: "id",
                optionLabel: "label",
                hintFontSize: 12.0),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
                context,
                "How often do you drink in a week?",
                edtController.selectedDrop,
                edtController.dropdownPageTwo,
                (onChangeValue) {}, (onValidate) {
              if (onValidate == null) {
                return "Please select item";
              }
              return null;
            },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 5.0,
                optionValue: "id",
                optionLabel: "label",
                hintFontSize: 12.0),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
                context,
                "How often do you exercise?",
                edtController.selectedDrop,
                edtController.dropdownPageTwo,
                (onChangeValue) {}, (onValidate) {
              if (onValidate == null) {
                return "Please select item";
              }
              return null;
            },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 5.0,
                optionValue: "id",
                optionLabel: "label",
                hintFontSize: 12.0),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Container(
              width: double.infinity,
              height: 52.0,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff38B6FF),
                ),
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

class EditPageTiga extends StatelessWidget {
  final TextEditingController alergiController = TextEditingController();
  final TextEditingController medicationController = TextEditingController();
  final TextEditingController kronologiController = TextEditingController();
  final TextEditingController surgeryController = TextEditingController();
  final TextEditingController bloodtransController = TextEditingController();
  final edtController = Get.put(EditprofileController());
  EditPageTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Medical background',
                  style: GoogleFonts.nunito(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const Text('3/3'),
              ],
            ),
            const SizedBox(
              height: 9.0,
            ),
            Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LinearProgressIndicator(
                    color: Colors.green,
                    backgroundColor: Colors.white,
                    value: edtController.currentValue.value.toDouble() /
                        edtController.maxPages.value,
                    minHeight: 4.0,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 45.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: alergiController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Allergies"),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 45.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: medicationController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Current medications"),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
              context,
              "Chronic Diseases",
              edtController.selectedDrop,
              edtController.dropdownPageOne,
              (onChangeValue) {},
              (onValidate) {
                if (onValidate == null) {
                  return "Please select item";
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 5.0,
              optionValue: "id",
              optionLabel: "label",
            ),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
                context,
                "Have you undergone a surgery before?",
                edtController.selectedDrop,
                edtController.dropdownPageOne,
                (onChangeValue) {}, (onValidate) {
              if (onValidate == null) {
                return "Please select item";
              }
              return null;
            },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 5.0,
                optionValue: "id",
                optionLabel: "label",
                hintFontSize: 12.0),
            const SizedBox(
              height: 15.0,
            ),
            FormHelper.dropDownWidget(
              context,
              "Blood transfusion",
              edtController.selectedDrop,
              edtController.dropdownPageOne,
              (onChangeValue) {},
              (onValidate) {
                if (onValidate == null) {
                  return "Please select item";
                }
                return null;
              },
              borderColor: Theme.of(context).primaryColor,
              borderFocusColor: Theme.of(context).primaryColor,
              borderRadius: 5.0,
              optionValue: "id",
              optionLabel: "label",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Container(
              width: double.infinity,
              height: 52.0,
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
