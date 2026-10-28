import 'package:flutter/material.dart';
import 'package:flutter_application_project/components/controller/list_produk_controller.dart';
import 'package:flutter_application_project/routes.dart';
import 'package:get/get.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5FF),

      appBar: AppBar(
        backgroundColor: const Color(0xFF2563EB),
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Toko Handphone",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: controller.listProduk.length,
        itemBuilder: (context, index) {
          final produk = controller.listProduk[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 4,
            shadowColor: Colors.blue.withValues(alpha: 0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            clipBehavior: Clip.antiAlias,

            child: InkWell(
              borderRadius: BorderRadius.circular(18),

              onTap: () {
                Get.toNamed(Routes.detailProduk, arguments: produk);
              },

              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    // FOTO
                    Container(
                      width: 105,
                      height: 105,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0ECFF),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(produk.image, fit: BoxFit.contain),
                      ),
                    ),

                    const SizedBox(width: 15),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            produk.namaProduk,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E293B),
                            ),
                          ),

                          const SizedBox(height: 8),

                          Text(
                            "Rp ${produk.harga}",
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2563EB),
                            ),
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                "${produk.rating}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Text(
                                "(${produk.reviews} ulasan)",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 8),

                          Row(
                            children: [
                              const Icon(
                                Icons.store,
                                size: 16,
                                color: Color(0xFF64748B),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  produk.namaToko,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF64748B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 17,
                      color: Color(0xFF2563EB),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
