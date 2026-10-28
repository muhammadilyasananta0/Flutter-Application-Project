import 'package:flutter/material.dart';
import 'package:flutter_application_project/models/produk_model.dart';
import 'package:get/get.dart';

class DetailProdukPage extends StatelessWidget {
  DetailProdukPage({super.key});

  final ProdukModel produk = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Detail Produk",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Foto Barang
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: const Color(0xFFE0ECFF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(produk.image, fit: BoxFit.contain),
              ),
            ),

            const SizedBox(height: 20),

            // Nama Dan Harga
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      produk.namaProduk,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      "Rp ${produk.harga}",
                      style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2563EB),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Buat Rating
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),

                child: Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 28),

                    const SizedBox(width: 8),

                    Text(
                      "${produk.rating}",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(width: 5),

                    Text(
                      "(${produk.reviews} ulasan)",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Buat Deskripsi
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Deskripsi Produk",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1E293B),
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      produk.description,
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Buat Nama Toko
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),

                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0ECFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.store,
                        color: Color(0xFF2563EB),
                        size: 25,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Toko",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),

                        const SizedBox(height: 3),

                        Text(
                          produk.namaToko,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
