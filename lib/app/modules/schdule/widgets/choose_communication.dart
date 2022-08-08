import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseCommunication extends StatelessWidget {
  const ChooseCommunication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.toNamed('/navbar'),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Schedule appointment',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Text(
            'Choose comunication medium',
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 52.0,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Text('Video Call'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 52.0,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Text('Voice Call'),
          )
        ],
      ),
    );
  }
}
