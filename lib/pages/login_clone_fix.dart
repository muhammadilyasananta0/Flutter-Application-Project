import 'package:flutter/material.dart';
import 'package:flutter_application_project/components/controller/loginapi_controller.dart';
import 'package:flutter_application_project/components/my_textfield.dart';
import 'package:flutter_application_project/components/my_button.dart';
import 'package:get/get.dart';

class LoginCloneFix extends StatelessWidget {
  LoginCloneFix({super.key});

  final controller = Get.put(LoginApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Text(
                "Samsung Official Store",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: MyTextfield(
                myHint: "Input Username",
                txtController: controller.txtUsername,
                radius: 10,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: MyTextfield(
                myHint: "Input Password",
                txtController: controller.txtPassword,
                radius: 10,
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              child: Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : MyButton(
                        text: "Log In",
                        onPressed: () {
                          controller.login();
                        },
                        color: Colors.blue,
                        radius: 10,
                      ),
              ),
            ),

            TextButton(onPressed: () {}, child: Text("Forgotten Password?")),

            SizedBox(
              width: 200,
              height: 45,
              child: MyButton(
                text: "Create New Account",
                onPressed: () {},
                color: Colors.green,
                radius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
