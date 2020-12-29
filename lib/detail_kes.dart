import 'package:flutter/material.dart';
import 'login.dart';

void main() => (DetailKes());

class DetailKes extends StatelessWidget {
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
                  "img/medis1.jpg",
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
                          "Bantuan kesehatan ini  untuk membantu masyarakat yang terkena covid. Isolasi mandiri di rumah dari pemerintah  demi memutus rantai covid-19 menimbulkan masalah perekonomian bagi masyarakat.Komunitas membantu untuk menggalang donasi berupa sembako untuk masyarakat menengah kebawah,dan para penyandang disabilitas netra yang kehidupannya benar-benar memprihatinkan",
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
