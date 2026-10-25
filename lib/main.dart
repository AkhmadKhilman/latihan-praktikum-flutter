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

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
      ),

      themeMode: ThemeMode.dark,

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
        leading: Icon(Icons.home_filled),
        actions: [
          IconButton(
            onPressed: () {
              print("Masuk Menu Profile, tapi nanti yah. Hehehe");
            },
            icon: Icon(Icons.account_circle),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            hoverColor: Theme.of(context).colorScheme.secondaryContainer,
            tooltip: "Profile Menu",
            padding: EdgeInsets.all(7.5),
          ),

          // IconButton(
          //   onPressed: () {
          //     print("Kembali ke home");
          //   },
          //   icon: Icon(Icons.close),
          // ),
        ],

        title: Text(
          "Dashboard Mahasiswa",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w900,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),

        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80, horizontal: 26),

        child: Text(
          "Nama: Akhmad Khilman AL Khafid \nNIM: 1124160075 \nKelas: TI 24 SE-1",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),

        width: 1000,
      ),

      bottomNavigationBar: Container(
        child: Text(
          "© 2026 Akhmad Khilman Al Khafid. All rights reserved.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
        padding: EdgeInsets.all(17.3),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
    );
  }
}
