import 'package:flutter/material.dart';
import 'package:quest_health/app/modules/splash/controllers/splash_controller.dart';

class YaoDot extends StatelessWidget {
  const YaoDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SplashController();
    return Scaffold(
      body: PageView.builder(itemBuilder: (context, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              controller.splashPage[index].imgAsset,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              controller.splashPage[index].judul,
              style: const TextStyle(
                  fontSize: 20,
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
                style: const TextStyle(
                  fontSize: 16,
                  height: 0.2,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 56.0,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {},
              child: const Text('Continue ->'),
            ),
          ],
        );
      }),
    );
  }
}
