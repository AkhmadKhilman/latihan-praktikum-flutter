import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplikasi Mahasiswa",
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Aplikasi Mahasiswa",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 26),
        child: Text(
          "Nama: Akhmad Khilman AL Khafid \nNIM: 1124160075 \nKelas: TI 24 SE-1",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        decoration: BoxDecoration(border: BoxBorder.all(color: Colors.black, width: 5)),
        width: 1000,
      ),
    );
  }
}
