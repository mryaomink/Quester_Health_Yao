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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
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
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/vidcall.png'),
              ),
              title: const Text('Kofi Amoah'),
              subtitle: const Text('Job Title'),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_downward),
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 52.0,
              margin: const EdgeInsets.symmetric(vertical: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blue),
                onPressed: () {},
                child: const Text('Continue'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
