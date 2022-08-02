import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SchduleController extends GetxController {
  var selectedIndexPage = 0.obs;
  var currentValue = 1.obs;
  var maxPages = 3.obs;

  var pageController = PageController();
}
