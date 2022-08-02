import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;
  final List<Tab> myTabs = <Tab>[
    const Tab(
      text: "Upcoming,",
    ),
    const Tab(
      text: "Drafts",
    ),
    const Tab(
      text: "Past",
    )
  ];
  @override
  void onInit() {
    controller = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
