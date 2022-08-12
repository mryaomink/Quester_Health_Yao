import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Payment Details',
          style: GoogleFonts.nunito(
              color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            margin:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                'assets/images/visa.png',
                fit: BoxFit.cover,
              ),
              title: Text(
                'Kweku Frimpong',
                style: GoogleFonts.nunito(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                '5454 #### ##### ##63',
                style: GoogleFonts.nunito(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 52.0,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                Get.toNamed("/addpayment");
              },
              child: Text(
                'Add another payment method',
                style: GoogleFonts.nunito(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
