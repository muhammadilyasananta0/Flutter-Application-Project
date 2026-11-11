import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_project/pages/detail_tim_page.dart';
import 'package:flutter_application_project/components/controller/list_page_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tim Premier League',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.errorMessage.isNotEmpty) {
                return Center(child: Text(controller.errorMessage.value));
              }

              return SizedBox(
                height: 180,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.teams.length,

                  itemBuilder: (context, index) {
                    final team = controller.teams[index];

                    return InkWell(
                      borderRadius: BorderRadius.circular(12),

                      onTap: () {
                        final idTeam = team['idTeam'];

                        if (idTeam == null || idTeam.isEmpty) {
                          Get.snackbar('Error', 'ID tim tidak ditemukan');
                          return;
                        }

                        Get.to(() => DetailTimPage(teamId: idTeam));
                      },

                      child: Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.all(10),

                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Expanded(
                              child: Image.network(
                                team['strBadge'] ?? '',
                                fit: BoxFit.contain,

                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(
                                    Icons.sports_soccer,
                                    size: 50,
                                  );
                                },
                              ),
                            ),

                            const SizedBox(height: 8),

                            Text(
                              team['strTeam'] ?? 'Nama Tim',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,

                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
