import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/videocall_controller.dart';

class VideocallView extends GetView<VideocallController> {
  const VideocallView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/vidcall.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 126.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff059E04),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Text(
                      'Video request pending...Tap to cancel request',
                      style: GoogleFonts.nunito(
                          fontSize: 12.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Dr. Jason Brown Jnr.',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            child: SizedBox(
              height: 50.0,
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 48.0,
                    backgroundImage: AssetImage(
                      'assets/images/micoff.png',
                    ),
                  ),
                  CircleAvatar(
                    radius: 48.0,
                    backgroundImage: AssetImage(
                      'assets/images/soundon.png',
                    ),
                  ),
                  CircleAvatar(
                    radius: 48.0,
                    backgroundImage: AssetImage(
                      'assets/images/mvcall.png',
                    ),
                  ),
                  CircleAvatar(
                    radius: 48.0,
                    backgroundImage: AssetImage(
                      'assets/images/endcall.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
