import 'package:coffeeshope/detailpage11.dart';
import 'package:coffeeshope/detailpage12.dart';
import 'package:coffeeshope/detailpage13.dart';
import 'package:coffeeshope/detailpage14.dart';
import 'package:coffeeshope/detailpage15.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Snack extends StatefulWidget {
  const Snack({super.key});

  @override
  State<Snack> createState() => _SnackState();
}

class _SnackState extends State<Snack> {
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
                        MaterialPageRoute(builder: (context) => DetailPage11()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][10]['nama']),
                                subtitle: Text(prov.menu['data'][10]['nama']),
                              ),
                              Image.asset(
                                "./assets/snack1.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage12()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][11]['nama']),
                                subtitle: Text(prov.menu['data'][11]['nama']),
                              ),
                              Image.asset(
                                "./assets/Snack4.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage13()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][12]['nama']),
                                subtitle: Text(prov.menu['data'][12]['nama']),
                              ),
                              Image.asset(
                                "./assets/Snack3.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage14()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][13]['nama']),
                                subtitle: Text(prov.menu['data'][13]['nama']),
                              ),
                              Image.asset(
                                "./assets/Snack5.png",
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
                        MaterialPageRoute(builder: (context) => DetailPage15()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                title: Text(prov.menu['data'][14]['nama']),
                                subtitle: Text(prov.menu['data'][14]['nama']),
                              ),
                              Image.asset(
                                "./assets/Snack2.png",
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
