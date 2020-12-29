import 'package:flutter/material.dart';

import 'login.dart';

void main() => (Donasi());

class Donasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text("Donasi Saya"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      child: Center(
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Silahkan Login Terlebih Dahulu",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF2196F3), fontSize: 20),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: RaisedButton(
                                  color: Colors.blue,
                                  child: Text(
                                    "Login",
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
