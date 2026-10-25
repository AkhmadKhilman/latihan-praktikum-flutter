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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfile()),
              );
            },
            icon: Icon(Icons.account_circle),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            hoverColor: Theme.of(context).colorScheme.secondaryContainer,
            tooltip: "Profile Menu",
          ),
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

        width: 1000,

        child: Text(
          "Selamat Datang Akhmad Khilman AL Khafid - 1124160075",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(17.3),
        color: Theme.of(context).colorScheme.primaryContainer,
        child: Text(
          "© 2026 Akhmad Khilman Al Khafid. All rights reserved.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.account_circle),

        title: Text(
          "Profile Mahasiswa",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),

        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout),
            hoverColor: Theme.of(context).colorScheme.primaryContainer,
            tooltip: "Back to Home",
          ),
        ],

        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      ),

      body: Padding(
        padding: EdgeInsetsGeometry.all(25),
        child: Column(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              "Data Pengguna",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),

            Text(
              "Nama: Akhmad Khilman Al Khafid",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),

            Text(
              "NIM: 1124160075",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),

            Text(
              "Kelas: TI 24 SE-1",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),

            Text(
              "Program Studi: Teknik Informatika",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),

            Text(
              "Konsentrasi Software Engineering",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),

            Text(
              "Mata Kuliah: Aplikasi Mobile",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(17.3),
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Text(
          "© 2026 Akhmad Khilman Al Khafid. All rights reserved.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
