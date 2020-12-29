import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:yuk_nyumbang/pendidikan.dart';
import 'package:yuk_nyumbang/kesehatan.dart';
import 'package:yuk_nyumbang/sosial.dart';

void main() => (Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(50, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Phone",
                      hintStyle: TextStyle(color: Colors.white38),
                      icon: Icon(Icons.search, color: Colors.white38),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 220.0,
            width: double.infinity,
            child: Container(
              child: Carousel(
                dotSize: 5.0,
                dotSpacing: 15.0,
                dotColor: Colors.black,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.transparent,
                dotVerticalPadding: 5.0,
                dotPosition: DotPosition.bottomCenter,
                images: [
                  InkWell(
                    onTap: () {
                      print('1 item Click');
                    },
                    child: Image.asset(
                      'img/ani1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('2 item Click');
                    },
                    child: Image.asset(
                      'img/ani2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('3 item Click');
                    },
                    child: Image.asset(
                      'img/ani3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('4 item Click');
                    },
                    child: Image.asset(
                      'img/ani4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('5 item Click');
                    },
                    child: Image.asset(
                      'img/ani5.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 15,
                    shadowColor: Colors.blue,
                    color: Colors.blue[400],
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          title: Text(
                            "Pilih Kategori ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Center(
                          child: ButtonBar(
                            children: <Widget>[
                              FlatButton(
                                color: Colors.blue[400],
                                child: const Text(
                                  "Medis & kesehatan",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Kesehatan();
                                  }));
                                },
                              ),
                              FlatButton(
                                color: Colors.blue[400],
                                child: const Text(
                                  "Pendidikan",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Pendidikan();
                                  }));
                                },
                              ),
                              FlatButton(
                                color: Colors.blue[400],
                                child: const Text(
                                  "Sosial",
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Sosial();
                                  }));
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
