import 'package:get/get.dart';
import 'package:flutter_application_project/models/produk_model.dart';

class DetailProdukController extends GetxController {
  late ProdukModel produk;

  @override
  void onInit() {
    super.onInit();

    produk = Get.arguments;
  }
}
