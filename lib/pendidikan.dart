import 'package:flutter/material.dart';
import 'package:yuk_nyumbang/detail_pen.dart';

void main() {
  runApp(new MaterialApp(
    home: new Pendidikan(),
  ));
}

class Pendidikan extends StatefulWidget {
  @override
  _PendidikanState createState() => _PendidikanState();
}

class _PendidikanState extends State<Pendidikan> {
  List<Container> daftarDonasi = new List();

  var karakter = [
    {
      "nama": "Bantuan Pendidikan Anak-Anak Desa Terpencil",
      "gambar": "pendidikan1.jpg"
    },
    {"nama": "Bantuan Kuota Belajar", "gambar": "pendidikan2.jpg"},
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
                        return DetailPen();
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
        title: new Text("Bantuan Pendidikan"),
      ),
      body: new GridView.count(
        crossAxisCount: 1,
        children: daftarDonasi,
      ),
    );
  }
}
