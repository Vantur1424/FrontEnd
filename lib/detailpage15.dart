import 'package:coffeeshope/home.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class DetailPage15 extends StatefulWidget {
  const DetailPage15({super.key});

  @override
  State<DetailPage15> createState() => _DetailPage15State();
}

class _DetailPage15State extends State<DetailPage15> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Menu_Provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Roti Tuna"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              prov.menu['data'][14]['nama'],
              style: TextStyle(fontSize: 40),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  RatingBarIndicator(
                    rating:
                        double.parse(prov.menu['data'][1]['rating'].toString()),
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 24.0,
                    direction: Axis.horizontal,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "[" + prov.menu['data'][14]['rating'].toString() + "]",
                  )
                ],
              )
            ],
          ),
          Row(
            children: [Image.asset(prov.menu['data'][14]['img'])],
          ),
          Row(
            children: [
              Column(
                children: [Text("\$")],
              ),
              Column(
                children: [
                  Text(
                    prov.menu['data'][14]['harga'].toString(),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(prov.menu['data'][14]['nama'],
                style: TextStyle(fontSize: 10)),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                prov.menu['data'][14]['deskripsi'],
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton.icon(
                  onPressed: () {
                    {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHome()));
                    }
                  },
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.black,
                  ),
                  label: Text("Add To Cart",
                      style: TextStyle(color: Colors.black)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.brown),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)))),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
