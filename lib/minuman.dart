import 'package:coffeeshope/detailpage1.dart';
import 'package:coffeeshope/detailpage2.dart';
import 'package:coffeeshope/detailpage3.dart';
import 'package:coffeeshope/detailpage4.dart';
import 'package:coffeeshope/detailpage5.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Minuman extends StatefulWidget {
  const Minuman({super.key});

  @override
  State<Minuman> createState() => _MinumanState();
}

class _MinumanState extends State<Minuman> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Menu_Provider>(context);

    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 240,
          child: InkWell(
              child: Image.asset(
            "./assets/th.jpeg",
            fit: BoxFit.cover,
          )),
        ),
        Container(
            child: Column(children: [
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage1()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][0]['nama']),
                                subtitle: Text(prov.menu['data'][0]['nama']),
                              ),
                              Image.asset(
                                "./assets/Minum2a.png",
                                height: 100,
                              )
                            ],
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage2()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][1]['nama']),
                                subtitle: Text(prov.menu['data'][1]['nama']),
                              ),
                              Image.asset(
                                "./assets/minum2.png",
                                height: 100,
                              )
                            ],
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage3()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][2]['nama']),
                                subtitle: Text(prov.menu['data'][2]['nama']),
                              ),
                              Image.asset(
                                "./assets/minum3.png",
                                height: 100,
                              )
                            ],
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage4()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][3]['nama']),
                                subtitle: Text(prov.menu['data'][3]['nama']),
                              ),
                              Image.asset(
                                "./assets/Minum4.png",
                                height: 100,
                              )
                            ],
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 200,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailPage5()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][4]['nama']),
                                subtitle: Text(prov.menu['data'][4]['nama']),
                              ),
                              Image.asset(
                                "./assets/Minum6.png",
                                height: 100,
                              )
                            ],
                          ),
                          shadowColor: Colors.black,
                          elevation: 8),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]))
      ],
    ));
  }
}
