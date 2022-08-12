import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quest_health/app/modules/chat/views/chat_view.dart';
import 'package:quest_health/app/modules/history/views/history_view.dart';
import 'package:quest_health/app/modules/home/controllers/yao_nav_controller.dart';
import 'package:quest_health/app/modules/home/views/home_view.dart';
import 'package:quest_health/app/modules/prescriptions/views/prescriptions_view.dart';

class YaoNavbar extends StatefulWidget {
  const YaoNavbar({Key? key}) : super(key: key);

  @override
  State<YaoNavbar> createState() => _YaoNavbarState();
}

class _YaoNavbarState extends State<YaoNavbar> {
  YaoNavController navController = Get.put(YaoNavController());

  final screen = [
    const HomeView(),
    const HistoryView(),
    const ChatView(),
    const PrescriptionsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: navController.selectedIndex.value,
          children: screen,
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff38B6FF),
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          onTap: (index) {
            navController.changeIndex(index);
          },
          currentIndex: navController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home.png',
                width: 24,
                height: 24,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/history.png',
                width: 24,
                height: 24,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Stack(
                children: [
                  Image.asset(
                    'assets/images/chat.png',
                    width: 24,
                    height: 24,
                  ),
                  // bisa di ganti dengan third party "Badge" di pub dev
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 12.0,
                        color: Colors.redAccent,
                      ))
                ],
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/prescription.png',
                width: 24,
                height: 24,
              ),
              label: "prescriptions",
            )
          ],
        ),
      ),
    );
  }
}
