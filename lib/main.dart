import 'package:flutter/material.dart';
import 'package:test/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan tulisan "DEBUG" pada kepala aplikasi
      title: 'siakad unja',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(), // Menggunakan LoginPage sebagai halaman utama
    );
  }
}
