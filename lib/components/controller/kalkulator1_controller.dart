import 'package:get/get.dart';

class KalkulatorController1 extends GetxController {
  var hasilHitung = 0.0.obs;

  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;
    Get.snackbar(
      "Hasil Penjumlahan",
      hasilTambah.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
    Get.snackbar(
      "Hasil Pengurangan",
      hasilKurang.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
    Get.snackbar(
      "Hasil Perkalian",
      hasilKali.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    double hasilBagi = angka1 / angka2;
    hasilHitung.value = hasilBagi;
    Get.snackbar(
      "Hasil Pembagian",
      hasilBagi.toString(),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
