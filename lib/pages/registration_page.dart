import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project/routes.dart';
import 'package:flutter_application_project/components/my_textfield.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtNoWA = TextEditingController();
    TextEditingController txtEmail = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[100],

      appBar: AppBar(
        title: Text(
          'Registration',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 159, 159, 25),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),

        child: Column(
          children: [
            SizedBox(height: 10),

            MyTextfield(
              myHint: 'Masukkan Nama Anda',
              txtController: txtNama,
              radius: 15,
            ),

            SizedBox(height: 15),

            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hint: Text('Masukkan Jenis Kelamin Anda'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),

              items: [
                DropdownMenuItem(value: 'Laki-Laki', child: Text('Laki-Laki')),
                DropdownMenuItem(value: 'Perempuan', child: Text('Perempuan')),
              ],

              onChanged: (value) {
                txtJenisKelamin.text = value ?? '';
              },
            ),

            SizedBox(height: 15),

            MyTextfield(
              myHint: 'Masukkan Alamat Anda',
              txtController: txtAlamat,
              radius: 15,
            ),

            SizedBox(height: 15),

            MyTextfield(
              myHint: 'Masukkan Nomor WA Anda',
              txtController: txtNoWA,
              radius: 15,
            ),

            SizedBox(height: 15),

            MyTextfield(
              myHint: 'Masukkan Email Anda',
              txtController: txtEmail,
              radius: 15,
            ),

            SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    Routes.confirmregistration,
                    arguments: {
                      'Nama': txtNama.text,
                      'JenisKelamin': txtJenisKelamin.text,
                      'Alamat': txtAlamat.text,
                      'NoWA': txtNoWA.text,
                      'Email': txtEmail.text,
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 47, 243, 33),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Kirim',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
