import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_project/components/controller/menu_drawer_controller.dart';
import 'package:flutter_application_project/menu/home.dart';
import 'package:flutter_application_project/menu/history.dart';
import 'package:flutter_application_project/menu/profile.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final MenuDrawerController controller = Get.put(MenuDrawerController());

  final List<Widget> pages = [HomePage(), HistoryPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // AppBar
        appBar: AppBar(
          title: Text('Samsung Official Store'),
          backgroundColor: const Color(0xFFFDF7FF),
          foregroundColor: const Color(0xFF29252D),
          elevation: 0,
        ),

        // Drawer
        drawer: Drawer(
          backgroundColor: const Color(0xFFF0FDF4),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // Header Profil
              DrawerHeader(
                decoration: const BoxDecoration(color: Color(0xFF16A34A)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage('assets/images/Profile.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Muhammad Ilyas Ananta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Menu Home
              ListTile(
                leading: const Icon(
                  Icons.home_outlined,
                  color: Color(0xFF16A34A),
                ),
                title: const Text('Home'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  controller.changePage(0);
                  Navigator.pop(context);
                },
              ),

              // Menu History
              ListTile(
                leading: const Icon(Icons.history, color: Color(0xFF16A34A)),
                title: const Text('History'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  controller.changePage(1);
                  Navigator.pop(context);
                },
              ),

              // Menu Profile
              ListTile(
                leading: const Icon(
                  Icons.person_outline,
                  color: Color(0xFF16A34A),
                ),
                title: const Text('Profile'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  controller.changePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

        // Konten halaman
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: pages,
        ),
      ),
    );
  }
}
