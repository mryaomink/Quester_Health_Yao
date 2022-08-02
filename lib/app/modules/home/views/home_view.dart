import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final List<Color> color = [
      const Color(0xff5DB4CF),
      const Color(0xffCF8D5D),
      const Color(0xffCF8D5D),
    ];

    final List<String> jdl = [
      "Covid-19 common\nsymptoms",
      "Benefits of yoga exercises",
      "How to improve your\nfitness level",
    ];
    final List<String> cat = [
      "Pandemic",
      "Fitness",
      "Fitness",
    ];
    final List<String> imgUrl = [
      "https://images.unsplash.com/photo-1584036561566-baf8f5f1b144?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1032&q=80",
      "https://images.unsplash.com/photo-1517130038641-a774d04afb3c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      "https://images.unsplash.com/photo-1580086319619-3ed498161c77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
    ];
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: InkWell(
                      onTap: () => Get.toNamed("/akun"),
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                      ),
                    ),
                    title: Text(
                      'Kweku Frimpong',
                      style: GoogleFonts.nunito(
                          fontSize: 16.0, color: Colors.black),
                    ),
                    subtitle: Text(
                      'QHC###',
                      style: GoogleFonts.nunito(fontWeight: FontWeight.w400),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.closeDrawer();
                      },
                      icon: const Icon(Icons.close),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/editprofile");
                    },
                    icon: const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/editprofile");
                    },
                    child: Text(
                      'Edit Account details',
                      style: GoogleFonts.nunito(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/editprofile");
                    },
                    icon: const Icon(
                      Icons.medical_services,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/editprofile");
                    },
                    child: Text(
                      'Change medical profile',
                      style: GoogleFonts.nunito(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/payment");
                    },
                    icon: const Icon(
                      Icons.payment,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/payment");
                    },
                    child: Text(
                      'Payment details',
                      style: GoogleFonts.nunito(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/editprofile");
                    },
                    icon: const Icon(
                      Icons.manage_accounts,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/editprofile");
                    },
                    child: Text(
                      'Manage Account',
                      style: GoogleFonts.nunito(fontSize: 16.0),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.toNamed("/auth");
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/auth");
                    },
                    child: Text(
                      'Logout',
                      style: GoogleFonts.nunito(fontSize: 16.0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 80.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      child: SizedBox(
                        width: 24.0,
                        height: 24.0,
                        child: Image.asset(
                          'assets/images/blueakun.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: Image.asset(
                        'assets/images/bluenotif.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 103,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bghome.png'),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning, Kweku',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'What do you need help with?',
                        style: GoogleFonts.nunito(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/sun.png',
                    fit: BoxFit.cover,
                    height: 36.0,
                    width: 36.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming appointments',
                    style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View more',
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              width: MediaQuery.of(context).size.width,
              height: 119.0,
              decoration: BoxDecoration(
                color: const Color(0xff38B6FF),
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
                          const Icon(Icons.date_range,
                              size: 16.0, color: Colors.white),
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
            ),
            const SizedBox(
              height: 16.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              width: MediaQuery.of(context).size.width,
              height: 58.0,
              child: OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.blue, width: 2),
                    padding: const EdgeInsets.all(16.0),
                  ),
                  onPressed: () {
                    Get.toNamed('/schdule');
                  },
                  icon: const Icon(Icons.calendar_month),
                  label: Text("Book an appointment ",
                      style: GoogleFonts.nunito(
                          fontSize: 16.0,
                          color: const Color(0xff38B6FF),
                          fontWeight: FontWeight.w600))),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Articles',
                    style: GoogleFonts.nunito(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'View more',
                    style: GoogleFonts.nunito(
                      fontSize: 14.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, left: 24.0, right: 24.0),
                      width: MediaQuery.of(context).size.width,
                      height: 120.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 133.0,
                            height: 103,
                            child: Image.network(
                              imgUrl[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 69.0,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: color[index],
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                child: Text(
                                  cat[index],
                                  style: GoogleFonts.nunito(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                jdl[index],
                                style: GoogleFonts.nunito(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 26.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Author',
                                        style: GoogleFonts.nunito(
                                          fontSize: 10.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Andrews Smith',
                                        style: GoogleFonts.nunito(
                                          fontSize: 12.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Time posted',
                                        style: GoogleFonts.nunito(
                                          fontSize: 10.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '2days ago',
                                        style: GoogleFonts.nunito(
                                          fontSize: 12.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
