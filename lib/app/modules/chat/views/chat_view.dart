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
                    width: 24.0,
                    height: 24.0,
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
            const ChatYao(
              imgAsset: 'assets/images/vidcall.png',
              nama: 'Evelyn White',
              desc: 'Etiam placerat urna nec orci congue...',
              time: 'Yesterday',
            ),
            const ChatYao(
              imgAsset: 'assets/images/vidcall.png',
              nama: 'Akwesi Pratt',
              desc: 'Etiam placerat urna nec orci congue...',
              time: 'Yesterday',
            ),
            const ChatYao(
              imgAsset: 'assets/images/vidcall.png',
              nama: 'Miss Duncan',
              desc: 'Etiam placerat urna nec orci congue...',
              time: 'Yesterday',
            ),
            const ChatYao(
              imgAsset: 'assets/images/vidcall.png',
              nama: 'Alfred Nkansah',
              desc: 'Etiam placerat urna nec orci congue...',
              time: 'Yesterday',
            ),
          ],
        ),
      ),
    );
  }
}

class ChatYao extends StatelessWidget {
  final String imgAsset;
  final String nama;
  final String desc;
  final String time;
  const ChatYao({
    Key? key,
    required this.imgAsset,
    required this.nama,
    required this.desc,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            imgAsset,
          ),
        ),
        title: Text(
          nama,
          style: GoogleFonts.nunito(fontSize: 14.0, color: Colors.black),
        ),
        subtitle: Text(
          desc,
          style: GoogleFonts.nunito(fontSize: 12.0, color: Colors.black),
        ),
        trailing: Text(
          time,
          style: GoogleFonts.nunito(fontSize: 12.0, color: Colors.blue),
        ),
      ),
    );
  }
}
