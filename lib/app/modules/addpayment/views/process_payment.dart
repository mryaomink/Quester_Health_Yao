import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessPayment extends StatelessWidget {
  const ProcessPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Image.asset(
              'assets/images/payproses.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Text(
            'Processing payment',
            style: GoogleFonts.nunito(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
