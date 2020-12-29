import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart' as home;
import 'donasi_saya.dart' as donasi;
import 'akun.dart' as akun;

void main() => (HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yuk Nyumbang",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    // TOOO: implement initSate
    super.initState();
    controller = new TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.blue));
    return Scaffold(
      body: new TabBarView(
        controller: controller,
        children: <Widget>[new home.Home(), donasi.Donasi(), new akun.Akun()],
      ),
      bottomNavigationBar: new Material(
        color: Colors.blue,
        child: new TabBar(
          controller: controller,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: <Widget>[
            new Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.library_books),
              text: "Donasi Saya",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Akun",
            ),
          ],
        ),
      ),
    );
  }
}
