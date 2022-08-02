import 'package:flutter/material.dart';
import 'package:quest_health/app/modules/editprofile/controllers/editprofile_controller.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_dua.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_one.dart';
import 'package:quest_health/app/modules/editprofile/widgets/yao_form_tiga.dart';

class YaoAppointment extends StatefulWidget {
  const YaoAppointment({Key? key}) : super(key: key);

  @override
  State<YaoAppointment> createState() => _YaoAppointmentState();
}

class _YaoAppointmentState extends State<YaoAppointment> {
  EditprofileController? edController;
  PageController appointmentController = PageController(initialPage: 0);
  late double currentValue;
  final double mxPage = 3;
  List<Widget> myPage = const [
    YaoFormOne(),
    YaoFormDua(),
    YaoFormTiga(),
  ];

  @override
  void initState() {
    currentValue = 1 / mxPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                height: 10.0,
                child: LinearProgressIndicator(
                  color: Colors.green,
                  value: currentValue,
                  minHeight: 15.0,
                ),
              ),
              Expanded(
                child: Text(
                    "${(currentValue * mxPage).toStringAsFixed(0)}/$mxPage"),
              ),
            ],
          ),
          Expanded(
            child: PageView(
                controller: appointmentController,
                onPageChanged: (index) {
                  setState(() {
                    currentValue = (index + 1) / mxPage;
                  });
                },
                children: myPage),
          ),
          Container(
            width: double.infinity,
            height: 52.0,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              onPressed: () {
                appointmentController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.ease);
              },
              child: const Text('Continue'),
            ),
          )
        ],
      ),
    );
  }
}
