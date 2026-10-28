import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  // Menyimpan index halaman yang dipilih
  final selectedIndex = 0.obs;

  // Mengubah halaman yang dipilih
  void changePage(int index) {
    selectedIndex.value = index;
  }
}
