import 'package:flutter/material.dart';
import 'package:yuk_nyumbang/detail_sos.dart';

void main() {
  runApp(new MaterialApp(
    home: new Sosial(),
  ));
}

class Sosial extends StatefulWidget {
  @override
  _SosialState createState() => _SosialState();
}

class _SosialState extends State<Sosial> {
  List<Container> daftarDonasi = new List();

  var karakter = [
    {
      "nama": "Bantuan Kepada Para Korban Banjir & Longsor",
      "gambar": "sosial2.jpg"
    },
    {"nama": "Donasi Santunan Anak Yatim", "gambar": "sosial1.jpg"},
    {"nama": "Sumbangan Untuk Warga Palestina", "gambar": "sosial3.jpg"},
    {"nama": "Bantuan Untuk Para Jompo", "gambar": "sosial4.jpg"},
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
                        return DetailSos();
                      }));
                    }),
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
        title: new Text("Bantuan Sosial"),
      ),
      body: new GridView.count(
        crossAxisCount: 1,
        children: daftarDonasi,
      ),
    );
  }
}
