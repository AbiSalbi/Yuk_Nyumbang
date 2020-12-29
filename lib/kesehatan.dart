import 'package:flutter/material.dart';
import 'package:yuk_nyumbang/detail_kes.dart';

void main() {
  runApp(new MaterialApp(
    home: new Kesehatan(),
  ));
}

class Kesehatan extends StatefulWidget {
  @override
  _KesehatanState createState() => _KesehatanState();
}

class _KesehatanState extends State<Kesehatan> {
  List<Container> daftarDonasi = new List();

  var karakter = [
    {
      "nama":
          " Pasien Terus Bertambah, Tenaga Medis Darurat Alat Pelindung Diri ",
      "gambar": "medis1.jpg"
    },
    {"nama": "Bantuan Pasien Covid-19", "gambar": "medis2.jpg"},
    {"nama": "Menyumbang APD Untuk Para Pahlawan Kita", "gambar": "medis3.jpg"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarDonasi.add(
        Container(
          padding: EdgeInsets.all(10.0),
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "img/$gambar",
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.all(20.0)),
                Center(
                  child: Text(
                    karakternya['nama'],
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                RaisedButton(
                  color: Colors.blue[400],
                  child: Text(
                    "Detail",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailKes();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Bantuan Medis & Kesehatan"),
      ),
      body: new GridView.count(
        crossAxisCount: 1,
        children: daftarDonasi,
      ),
    );
  }
}
