import 'package:flutter/material.dart';

class OtpLoading extends StatelessWidget {
  const OtpLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/payproses.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
