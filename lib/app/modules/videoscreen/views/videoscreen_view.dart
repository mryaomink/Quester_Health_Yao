import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/videoscreen_controller.dart';

class VideoscreenView extends GetView<VideoscreenController> {
  const VideoscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff434343),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              const Icon(
                Icons.wifi_calling,
                color: Color(0xff059E04),
              ),
              Text(
                'Calling',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Dr. Jason Brown Jnr.',
                style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/micoff.png'),
              ),
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage('assets/images/soundon.png'),
              ),
            ],
          ),
          const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/callend.png'),
          ),
        ],
      ),
    );
  }
}
