import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_project/models/model_data.dart';

class ListPageController extends GetxController {
  var isLoading = true.obs;

  var teams = <Map<String, String?>>[].obs;

  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchTeams();
  }

  Future<void> fetchTeams() async {
    try {
      isLoading(true);
      errorMessage('');

      final response = await http.get(
        Uri.parse(
          'https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English_Premier_League',
        ),
      );

      if (response.statusCode == 200) {
        final data = ModelData.fromJson(jsonDecode(response.body));

        teams.assignAll(data.teams);
      } else {
        errorMessage('Gagal mengambil data dari API');
      }
    } catch (e) {
      errorMessage('Terjadi kesalahan: $e');
    } finally {
      isLoading(false);
    }
  }
}
