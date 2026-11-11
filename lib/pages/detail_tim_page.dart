import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_application_project/components/controller/detail_tim_controller.dart';

class DetailTimPage extends StatefulWidget {
  final String teamId;

  const DetailTimPage({super.key, required this.teamId});

  @override
  State<DetailTimPage> createState() => _DetailTimPageState();
}

class _DetailTimPageState extends State<DetailTimPage> {
  late final DetailTimController controller;

  @override
  void initState() {
    super.initState();

    controller = Get.put(
      DetailTimController(teamId: widget.teamId),
      tag: widget.teamId,
    );
  }

  @override
  void dispose() {
    Get.delete<DetailTimController>(tag: widget.teamId);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5FF),

      appBar: AppBar(
        title: const Text('Detail Tim'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        }

        final team = controller.team.value;

        if (team == null) {
          return const Center(child: Text('Data tim tidak tersedia'));
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Image.network(
                  team['strTeamBadge'] ?? '',
                  height: 50,
                  width: 50,
                  fit: BoxFit.contain,

                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.sports_soccer, size: 100);
                  },
                ),
              ),

              const SizedBox(height: 20),

              Center(
                child: Text(
                  team['strTeam'] ?? 'Nama Tim',
                  textAlign: TextAlign.center,

                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Divider(),

              infoRow('Liga', team['strLeague']),
              infoRow('Olahraga', team['strSport']),
              infoRow('Negara', team['strCountry']),
              infoRow('Tahun Berdiri', team['intFormedYear']),
              infoRow('Stadion', team['strStadium']),
              infoRow('Lokasi Stadion', team['strStadiumLocation']),
              infoRow('Kapasitas Stadion', team['intStadiumCapacity']),
              infoRow('Website', team['strWebsite']),

              const SizedBox(height: 20),

              const Text(
                'Tentang Tim',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 10),

              Text(
                team['strDescriptionEN'] ?? 'Deskripsi tim belum tersedia.',
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 14, height: 1.5),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget infoRow(String title, dynamic value) {
    final text = value?.toString();

    if (text == null || text.isEmpty || text == 'null') {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          SizedBox(
            width: 125,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),

          const Text(': '),

          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
