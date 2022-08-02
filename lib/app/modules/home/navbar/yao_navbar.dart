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
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: "prescriptions",
            )
          ],
        ),
      ),
    );
  }
}
