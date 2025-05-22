import 'package:coffeeshope/home.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
// import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:flutter/cupertino.dart';

class DetailPage5 extends StatefulWidget {
  const DetailPage5({super.key});

  @override
  State<DetailPage5> createState() => _DetailPage5State();
}

class _DetailPage5State extends State<DetailPage5> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Menu_Provider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Ekspresso"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              prov.menu['data'][4]['nama'],
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
                    "[" + prov.menu['data'][4]['rating'].toString() + "]",
                  )
                ],
              )
            ],
          ),
          Row(
            children: [Image.asset(prov.menu['data'][4]['img'])],
          ),
          Row(
            children: [
              Column(
                children: [Text("\$")],
              ),
              Column(
                children: [
                  Text(
                    prov.menu['data'][4]['harga'].toString(),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 10),
            child: Text("Sized", style: TextStyle(fontSize: 20)),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(prov.menu['data'][4]["ukuran"],
                style: TextStyle(fontSize: 50)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(prov.menu['data'][4]['nama'],
                style: TextStyle(fontSize: 10)),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                prov.menu['data'][4]['deskripsi'],
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
