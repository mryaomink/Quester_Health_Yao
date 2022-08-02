import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PayComplete extends StatelessWidget {
  const PayComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 47.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/paysukses.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 60.0,
            ),
            Text(
              'Payment complete',
              style: GoogleFonts.nunito(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                width: double.infinity,
                height: 52.0,
                margin: const EdgeInsets.only(bottom: 60.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: () {},
                  child: Text(
                    'Continue',
                    style: GoogleFonts.nunito(
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
