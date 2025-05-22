import 'package:coffeeshope/Login.dart';
import 'package:coffeeshope/categories.dart';
import 'package:coffeeshope/menu.dart';
import 'package:coffeeshope/profil.dart';
import 'package:coffeeshope/promo.dart';
import 'package:coffeeshope/recomend.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ]),
                  child: Icon(Icons.bookmark),
                ),
              ),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 3)),
                      ]),
                  child: PopupMenuButton(
                      onSelected: (result) {
                        if (result == 0) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyProfil()));
                        }
                        if (result == 1) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Menu()));
                        }
                        if (result == 2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyLogin()));
                        }
                      },
                      itemBuilder: (BuildContext context) => [
                            PopupMenuItem(
                              child: Text("Profile"),
                              value: 0,
                            ),
                            PopupMenuItem(
                              child: Text("Keranjang"),
                              value: 1,
                            ),
                            PopupMenuItem(
                              child: Text("Keluar"),
                              value: 2,
                            ),
                          ]),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 10, bottom: 20),
            child: Text(
              "Populer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Categories(),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10, bottom: 10),
            child: Text(
              "Lagi Promo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Promo(),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10, bottom: 10),
            child: Text(
              "Rekomendasio",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Recommendation(),
        ]));
  }
}
