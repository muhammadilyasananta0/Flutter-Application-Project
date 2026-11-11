import 'package:flutter_application_project/components/controller/loginapi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginApiPage extends StatelessWidget {
  LoginApiPage({super.key});

  final controller = Get.put(LoginApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login API")),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: controller.txtUsername,
              decoration: InputDecoration(label: Text("Input Username")),
            ),
            TextField(
              controller: controller.txtPassword,
              obscureText: true,
              decoration: InputDecoration(label: Text("Input Password")),
            ),
            Obx(
              () => controller.isLoading.value
                  ? Center(child: CircularProgressIndicator())
                  : OutlinedButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("Login"),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
