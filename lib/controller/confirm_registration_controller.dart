import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String jenisKelamin;
  late String alamat;
  late String noWA;
  late String email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments; // Menangkap data dari tampilan sebelumnya
    nama = arguments['Nama'];
    jenisKelamin = arguments['JenisKelamin'];
    alamat = arguments['Alamat'];
    noWA = arguments['NoWA'];
    email = arguments['Email'];

    // Dll.
  }
}
