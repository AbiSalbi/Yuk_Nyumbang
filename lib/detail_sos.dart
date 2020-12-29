import 'package:flutter/material.dart';
import 'login.dart';

void main() => (DetailSos());

class DetailSos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Detail"),
      ),
      body: Container(
        child: Center(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "img/sosial2.jpg",
                  fit: BoxFit.cover,
                ),
                Padding(padding: EdgeInsets.all(15.0)),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Deskripsi",
                        style:
                            TextStyle(color: Color(0xFF263238), fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Bantuan sosial adalah pemberian bantuan berupa uang,barang atau jasa dari pemerintah daerah kepada individu, keluarga, kelompok dan/atau masyarakat yang sifatnya tidak secara terus menerus dan selektif yang bertujuan untuk melindungi dari kemungkinan terjadinya risiko sosial.",
                          style:
                              TextStyle(color: Color(0xFF263238), fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: RaisedButton(
                            color: Colors.blue,
                            child: Text(
                              "Donasi Sekarang",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF), fontSize: 18),
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Login();
                              }));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
