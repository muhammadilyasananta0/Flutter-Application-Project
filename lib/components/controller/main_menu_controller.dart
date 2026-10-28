import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project/menu/home.dart';
import 'package:flutter_application_project/menu/history.dart';
import 'package:flutter_application_project/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}
