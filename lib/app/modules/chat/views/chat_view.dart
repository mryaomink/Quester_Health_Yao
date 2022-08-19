import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 16.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Chat',
                    style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/images/opennew.png',
                    fit: BoxFit.cover,
                    width: 16.0,
                    height: 16.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 52.0,
              margin: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Search'),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/vidcallsmall.png',
                  ),
                ),
                title: Text(
                  'Akwesi Prat',
                  style:
                      GoogleFonts.nunito(fontSize: 14.0, color: Colors.black),
                ),
                subtitle: Text(
                  'Prescribed by Dr.Jason Brown Jnr.',
                  style:
                      GoogleFonts.nunito(fontSize: 12.0, color: Colors.black),
                ),
                trailing: Text(
                  'Yesterday',
                  style: GoogleFonts.nunito(fontSize: 12.0, color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
