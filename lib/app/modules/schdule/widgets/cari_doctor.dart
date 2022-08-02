import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CariDoctor extends StatelessWidget {
  const CariDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule appointment'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Search for a doctor',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 8.0),
          TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: 'Type in doctor’s name',
              suffixIcon: InkWell(
                  onTap: () => Get.toNamed("/docdetails"),
                  child: const Icon(Icons.search)),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 52.0,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {},
              child: const Text('Continue'),
            ),
          )
        ],
      ),
    );
  }
}
