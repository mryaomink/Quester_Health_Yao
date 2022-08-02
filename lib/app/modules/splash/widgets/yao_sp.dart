import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quest_health/app/modules/splash/views/splash_view.dart';

class YaoSp extends StatefulWidget {
  const YaoSp({Key? key}) : super(key: key);

  @override
  State<YaoSp> createState() => _YaoSpState();
}

class _YaoSpState extends State<YaoSp> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SplashView())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2FAFF),
      body: Center(
        child: Image.asset('assets/images/logobesar.png', fit: BoxFit.cover),
      ),
    );
  }
}
