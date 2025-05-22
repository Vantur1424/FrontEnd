import 'package:coffeeshope/detailpage10.dart';
import 'package:coffeeshope/detailpage6.dart';
import 'package:coffeeshope/detailpage7.dart';
import 'package:coffeeshope/detailpage8.dart';
import 'package:coffeeshope/detailpage9.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Makanan extends StatefulWidget {
  const Makanan({super.key});

  @override
  State<Makanan> createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
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
                        MaterialPageRoute(builder: (context) => DetailPage6()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][5]['nama']),
                                subtitle: Text(prov.menu['data'][5]['nama']),
                              ),
                              Image.asset(
                                "./assets/Makanan1.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage7()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][6]['nama']),
                                subtitle: Text(prov.menu['data'][6]['nama']),
                              ),
                              Image.asset(
                                "./assets/Makanan4.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage8()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][7]['nama']),
                                subtitle: Text(prov.menu['data'][7]['nama']),
                              ),
                              Image.asset(
                                "./assets/Makanan3.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage9()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][8]['nama']),
                                subtitle: Text(prov.menu['data'][8]['nama']),
                              ),
                              Image.asset(
                                "./assets/Makanan2.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage10()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][9]['nama']),
                                subtitle: Text(prov.menu['data'][9]['nama']),
                              ),
                              Image.asset(
                                "./assets/Makanan5.png",
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
