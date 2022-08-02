import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quest_health/app/routes/app_pages.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HistoryController tabs = Get.put(HistoryController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.offAndToNamed(Routes.NAVBAR);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'History',
            style: GoogleFonts.nunito(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: tabs.myTabs,
            controller: tabs.controller,
          ),
        ),
        body: SizedBox(
          height: 150.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TabBarView(controller: tabs.controller, children: const [
              UpcomingItem(),
              DraftItem(),
              PastItem(),
            ]),
          ),
        ));
  }
}

class UpcomingItem extends StatelessWidget {
  const UpcomingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      width: MediaQuery.of(context).size.width,
      height: 119.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage('assets/images/bghome.png'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 48.0,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              ),
            ),
            title: Text(
              'Dr. Jason Brown Jnr.',
              style: GoogleFonts.nunito(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                '30mins session',
                style: GoogleFonts.nunito(
                    fontSize: 10.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            trailing: Container(
              alignment: Alignment.center,
              width: 76.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xff66CF5D),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                'Voice Call',
                style: GoogleFonts.nunito(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 17.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(Icons.date_range, size: 16.0, color: Colors.white),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "01/01/2022",
                    style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.timer,
                    size: 16,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "11:32 am",
                    style: GoogleFonts.nunito(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DraftItem extends StatelessWidget {
  const DraftItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      width: MediaQuery.of(context).size.width,
      height: 119.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 205, 255, 56),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 48.0,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              ),
            ),
            title: Text(
              'Dr. Jason Brown Jnr.',
              style: GoogleFonts.nunito(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                '30mins session',
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
            trailing: Container(
              alignment: Alignment.center,
              width: 76.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xff66CF5D),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'Voice Call',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 17.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(Icons.date_range, size: 16.0, color: Colors.black),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "01/01/2022",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.timer,
                    size: 16,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "11:32 am",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class PastItem extends StatelessWidget {
  const PastItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      width: MediaQuery.of(context).size.width,
      height: 119.0,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 156, 198, 222),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 48.0,
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
              ),
            ),
            title: const Text(
              'Dr. Jason Brown Jnr.',
              style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                '30mins session',
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            trailing: Container(
              alignment: Alignment.center,
              width: 76.0,
              height: 23.0,
              decoration: BoxDecoration(
                color: const Color(0xff66CF5D),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: const Text(
                'Voice Call',
                style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 17.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: const [
                  Icon(Icons.date_range, size: 16.0, color: Colors.white),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "01/01/2022",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.timer,
                    size: 16,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "11:32 am",
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
