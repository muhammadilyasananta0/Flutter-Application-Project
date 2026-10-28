import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> produk = [
      'Samsung Galaxy S25',
      'Samsung Galaxy A56',
      'Samsung Galaxy S24',
      'Samsung Galaxy A36',
      'Samsung Galaxy Z Flip',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Produk Terbaru',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 16),

            Container(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: produk.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          produk[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
