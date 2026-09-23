import 'package:flutter_application_project/components/my_textfield.dart';
import 'package:flutter_application_project/controller/kalkulator1_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorPage1 extends StatelessWidget {
  KalkulatorPage1({super.key});

  final controller = Get.put(KalkulatorController1());

  final TextEditingController txtangka1 = TextEditingController();
  final TextEditingController txtangka2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kalkulator",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            MyTextfield(
              myHint: "Angka 1",
              txtController: txtangka1,
              radius: 10,
            ),

            const SizedBox(height: 10),

            MyTextfield(
              myHint: "Angka 2",
              txtController: txtangka2,
              radius: 10,
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          "Error",
                          "Angka harus diisi",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }

                      controller.tambah(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "+",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          "Error",
                          "Angka harus diisi",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }

                      controller.kurang(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "-",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          "Error",
                          "Angka harus diisi",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }

                      controller.kali(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "×",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                        Get.snackbar(
                          "Error",
                          "Angka harus diisi",
                          snackPosition: SnackPosition.BOTTOM,
                        );
                        return;
                      }

                      controller.bagi(
                        double.parse(txtangka1.text),
                        double.parse(txtangka2.text),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      "÷",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Hasil",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Obx(
              () => Text(
                controller.hasilHitung.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
