import 'package:flutter_application_project/controller/confirm_registration_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: Text("Confirm Registration"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 159, 159, 25),
        foregroundColor: Colors.white,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Data Registrasi",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Text(
              "Nama: ${controller.nama}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            SizedBox(height: 10),

            Text(
              "Jenis Kelamin: ${controller.jenisKelamin}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            SizedBox(height: 10),

            Text(
              "Alamat: ${controller.alamat}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            SizedBox(height: 10),

            Text(
              "Nomor WA: ${controller.noWA}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            SizedBox(height: 10),

            Text(
              "Email: ${controller.email}",
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),

            SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                  foregroundColor: Colors.white,
                ),
                child: Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
