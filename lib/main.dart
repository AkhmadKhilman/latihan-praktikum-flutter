import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Mahasiswa",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Dashboard Mahasiswa",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 26),
        child: Text(
          "Nama: Akhmad Khilman AL Khafid \nNIM: 1124160075 \nKelas: TI 24 SE-1",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        ),
        width: 1000,
      ),
    );
  }
}
