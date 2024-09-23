import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testlab/login_page.dart';
import 'package:testlab/providers/usar_providers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => UserProvider()), // กำหนด UserProvider
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // LoginPage อยู่ใน scope ของ Provider
    );
  }
}