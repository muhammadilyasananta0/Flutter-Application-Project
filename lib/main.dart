import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_project/kalkulator1_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: KalkulatorPage1());
  }
}
