import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/auth_controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Image.asset(
                'assets/images/logokecil.png',
                width: 80.0,
                height: 37.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 60.0,
              ),
              Image.asset(
                'assets/images/empat.png',
                height: 294.0,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 36.0,
              ),
              Text(
                'Let’s get you started',
                style: GoogleFonts.nunito(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Text(
                  'A platform that seeks to use technology to improve healthcare access in Ghana',
                  style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.black,
                      height: 1.6,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                height: 54.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {
                    Get.toNamed('/register');
                  },
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              // Container(
              //   width: double.infinity,
              //   height: 54.0,
              //   margin: const EdgeInsets.symmetric(
              //     horizontal: 24.0,
              //   ),
              //   child: ElevatedButton(
              //     style: ElevatedButton.styleFrom(primary: Colors.white),
              //     onPressed: () {
              //       Get.toNamed('/navbar');
              //     },
              //     child: const Text(
              //       'Login',
              //       style: TextStyle(
              //         fontSize: 16.0,
              //         color: Colors.blue,
              //         fontWeight: FontWeight.w700,
              //       ),
              //     ),
              //   ),
              // ),
              RichText(
                text: TextSpan(
                  text: "Already have an account?",
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Log in",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.toNamed('/navbar'),
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'or',
                style: GoogleFonts.nunito(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Continue with',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Image.asset(
                          'assets/images/fb.png',
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Image.asset(
                          'assets/images/apple.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
