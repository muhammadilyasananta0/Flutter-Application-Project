import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailTimController extends GetxController {
  final String teamId;

  DetailTimController({required this.teamId});

  var isLoading = true.obs;

  var team = Rxn<Map<String, dynamic>>();

  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDetail();
  }

  Future<void> fetchDetail() async {
    try {
      isLoading(true);
      errorMessage('');

      final response = await http.get(
        Uri.parse(
          'https://www.thesportsdb.com/api/v1/json/123/lookupteam.php?id=$teamId',
        ),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['teams'] != null && data['teams'].isNotEmpty) {
          team.value = Map<String, dynamic>.from(data['teams'][0]);
        } else {
          errorMessage('Detail tim tidak ditemukan');
        }
      } else {
        errorMessage('Gagal mengambil detail tim');
      }
    } catch (e) {
      errorMessage('Terjadi kesalahan: $e');
    } finally {
      isLoading(false);
    }
  }
}
