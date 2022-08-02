import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

Widget _indicator(bool isActive) {
  return Image.asset(
      isActive ? "assets/images/dotblue.png" : "assets/images/dotgrey.png");
}

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: controller.splashPage.length,
          controller: controller.pageController,
          onPageChanged: controller.selectedIndexPage,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logokecil.png',
                  width: 80.0,
                  height: 37.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  controller.splashPage[index].imgAsset,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  controller.splashPage[index].judul,
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    controller.splashPage[index].desc,
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                        controller.splashPage.length,
                        (index) => Obx(
                              () => Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: _indicator(
                                    controller.selectedIndexPage.value ==
                                        index),
                              ),
                            ))),
                const SizedBox(
                  height: 56.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: controller.nextPage,
                  child: Obx(
                    () => Text(
                      controller.islastpage ? "Continue" : "Next",
                      style: GoogleFonts.nunito(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
