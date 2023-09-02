import 'package:flutter/material.dart';
import 'Screen/home.dart'; // ต้องให้ path เหมือนจริง
import 'Screen/Login.dart';
// import 'Screen/Slide Menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
      },
    );
  }
}
