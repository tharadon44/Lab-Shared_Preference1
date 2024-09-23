import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testlab/providers/usar_providers.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        backgroundColor: Colors.yellow, // ตั้งค่าสีเหลืองให้กับ AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Access Token:"),
            const SizedBox(height: 16),
            // ใช้ Consumer เพื่อฟังการเปลี่ยนแปลงใน UserProvider
            Consumer<UserProvider>(
              builder: (context, userProvider, child) {
                // ตรวจสอบว่า accessToken เป็น null หรือไม่
                return Text(
                  userProvider.accessToken ?? 'No access token available',
                  style: const TextStyle(color: Colors.blue),
                );
              },
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200], // ตั้งค่าพื้นหลังของหน้าเป็นสีเทาอ่อน
    );
  }
}
