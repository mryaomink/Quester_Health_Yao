import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/videoscreen_controller.dart';

class VideoscreenView extends GetView<VideoscreenController> {
  const VideoscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 89, 86, 86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: const [
              Icon(
                Icons.wifi_calling,
              ),
              Text('Calling'),
              Text('Dr. Jason Brown Jnr.'),
            ],
          ),
          const CircleAvatar(
            radius: 100.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mic_off),
                  ),
                  const Text('Mute')
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.speaker),
                  ),
                  const Text('Speaker')
                ],
              ),
            ],
          ),
          SizedBox(
            width: 50.0,
            height: 50.0,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone_disabled,
                size: 30.0,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
