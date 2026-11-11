import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_project/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginApiController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  // method hit API
  void login() async {
    if (txtUsername.text.toString().isEmpty ||
        txtPassword.text.toString().isEmpty) {
      Get.snackbar("error", "Username & Password harus terisi");
    } else {
      try {
        isLoading.value =
            true; // Sebagai tanda dipagenya muncul loading widget.
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(
          url,
          body: {
            "username": txtUsername.text.toString(),
            "password": txtPassword.text.toString(),
          },
        );

        isLoading.value = false;
        if (response.statusCode == 200) {
          // Kita ambil jsonnya message pindah tampilan ke mainmenu.
          // Contoh json yang paling sederhana.
          final data = jsonDecode(response.body);
          if (data['status'] == true) {
            Get.snackbar("Berhasil", data['message']);

            Get.offAllNamed(Routes.menudrawer);
          } else {
            Get.snackbar("Gagal", data['message']);
          }
        } else {
          Get.snackbar("Gagal", "Cek Internet Connection");
        }
      } catch (e) {
        Get.snackbar("Gagal", e.toString());
      }
    }
  }
}
