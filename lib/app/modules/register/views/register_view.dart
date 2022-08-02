import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Center(
                  child: Image.asset(
                    'assets/images/logokecil.png',
                    fit: BoxFit.cover,
                    width: 76.0,
                    height: 46.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 29.0,
              ),
              IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const SizedBox(
                height: 29.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Let’s get your account setup',
                  style: GoogleFonts.nunito(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: "Phone Name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 21.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(),
                      hintText: "Confirm password",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 31.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Checkbox(
                      value: controller.isChecked.value,
                      onChanged: (value) {
                        controller.isChecked.value =
                            !controller.isChecked.value;
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: RichText(
                      text: TextSpan(
                        text: "I agree to the",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Terms and Conditions, Privacy Policy",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    onPressed: () {},
                    child: const Text(
                      'Create Account',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      )),
    );
  }
}
