import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/otppage_controller.dart';

class OtppageView extends GetView<OtppageController> {
  const OtppageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const Text(
                      'Enter authentication code',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            "We just sent an authentication code to the number,",
                        style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " +233 55 564 5674",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.blue),
                          ),
                          TextSpan(
                            text: " you provided.",
                            style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    border: const OutlineInputBorder(),
                    hintText: "4-digit code from SMS",
                    hintStyle: GoogleFonts.nunito(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Still haven’t received the code yet?",
                      style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: " Resend code",
                          style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '0s',
                    style: GoogleFonts.nunito(color: Colors.grey),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {},
                  child: Text(
                    'Create an Account',
                    style: GoogleFonts.nunito(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 36.0),
              InkWell(
                  // tambahkan fungsi edit number
                  onTap: () {},
                  child: Text(
                    'Change number',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
