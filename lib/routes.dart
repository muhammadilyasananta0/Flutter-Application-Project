import 'package:flutter_application_project/pages/confirm_registration_page.dart';
import 'package:flutter_application_project/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  // List pages untuk aplikasi.

  static const String registration = "/registration";
  static const String confirmregistration = "/confirmregistration";
  // Dll.

  static final mypages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmregistration, page: () => ConfirmRegistrationPage()),
  ];
}
