import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0FDF4),

      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF16A34A),
        centerTitle: true,
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),

            // fotoprofil
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xFF16A34A), width: 3),
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/Profile.jpg'),
              ),
            ),

            const SizedBox(height: 16),

            // namaakun
            const Text(
              'Muhammad Ilyas Ananta',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF14532D),
              ),
            ),

            const SizedBox(height: 6),
          ],
        ),
      ),
    );
  }
}
