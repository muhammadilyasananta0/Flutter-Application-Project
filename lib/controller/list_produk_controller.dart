import 'package:flutter_application_project/models/produk_model.dart';
import 'package:get/get.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Samsung Galaxy A17 5G",
      harga: "3.799.000",
      image: "assets/images/download (1).jpg",
      description:
          "Samsung Galaxy A17 5G dengan desain modern dan performa yang baik.",
      rating: 4.8,
      reviews: 125,
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy A26 5G",
      harga: "2.999.000",
      image: "assets/images/download (2).jpg",
      description: "Samsung Galaxy A26 5G dengan layar berkualitas dan performa yang responsif.",
      rating: 4.7,
      reviews: 98,
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy A36 5G",
      harga: "4.499.000",
      image: "assets/images/download (3).jpg",
      description: "Samsung Galaxy A36 5G dengan desain elegan dan dukungan jaringan 5G.",
      rating: 4.8,
      reviews: 156,
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy A56 5G",
      harga: "5.499.000",
      image: "assets/images/download (4).jpg",
      description: "Samsung Galaxy A56 5G dengan performa tinggi dan kamera berkualitas.",
      rating: 4.9,
      reviews: 210,
      namaToko: "Samsung Official Store",
    ),

    ProdukModel(
      namaProduk: "Samsung Galaxy S25 FE",
      harga: "12.499.000",
      image: "assets/images/download.jpg",
      description:
          "Samsung Galaxy S25 FE dengan performa flagship dan desain premium.",
      rating: 4.9,
      reviews: 320,
      namaToko: "Samsung Official Store",
    ),
  ];
}
