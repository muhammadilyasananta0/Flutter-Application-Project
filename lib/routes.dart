import 'package:flutter_application_project/pages/confirm_registration_page.dart';
import 'package:flutter_application_project/pages/list_produk_page.dart';
import 'package:flutter_application_project/pages/registration_page.dart';
import 'package:flutter_application_project/pages/detail_produk_page.dart';
import 'package:flutter_application_project/pages/main_menu_page.dart';
import 'package:flutter_application_project/pages/menu_drawer.dart';
import 'package:get/get.dart';

class Routes {
  // List pages untuk aplikasi.

  static const String registration = "/registration";
  static const String confirmregistration = "/confirmregistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainmenupage = "/mainmenupage";
  static const String menudrawer = "/menudrawer";

  // Dll.

  static final mypages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmregistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listProduk, page: () => ListProdukPage()),
    GetPage(name: detailProduk, page: () => DetailProdukPage()),
    GetPage(name: mainmenupage, page: () => MainMenuPage()),
    GetPage(name: menudrawer, page: () => MenuDrawer()),
  ];
}
