import 'package:coffeeshope/Pembayaran.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  int totalItem = 0;
  int _counterMocha = 0;
  int hargaMocha = 2;

  int _counterAmerica = 0;
  int hargaAmerica = 2;

  int _counterIce = 0;
  int hargaIce = 2;

  int _counterChocolate = 0;
  int hargaChocolate = 2;

  int _counterCrispy = 0;
  int hargaCrispy = 2;

  int _counterChicken = 0;
  int hargaChicken = 2;

  void _incrementCounterMocha() {
    setState(() {
      _counterMocha++;
    });
  }

  void _decrementCounterMocha() {
    setState(() {
      _counterMocha--;
    });
  }

  void _incrementCounterAmerica() {
    setState(() {
      _counterAmerica++;
    });
  }

  void _decrementCounterAmerica() {
    setState(() {
      _counterAmerica--;
    });
  }

  void _incrementCounterIce() {
    setState(() {
      _counterIce++;
    });
  }

  void _decrementCounterIce() {
    setState(() {
      _counterIce--;
    });
  }

  void _incrementCounterChocolate() {
    setState(() {
      _counterChocolate++;
    });
  }

  void _decrementCounterChocolate() {
    setState(() {
      _counterChocolate--;
    });
  }

  void _incrementCounterCrispy() {
    setState(() {
      _counterCrispy++;
    });
  }

  void _decrementCounterCrispy() {
    setState(() {
      _counterCrispy--;
    });
  }

  void _incrementCounterChicken() {
    setState(() {
      _counterChicken++;
    });
  }

  void _decrementCounterChicken() {
    setState(() {
      _counterChicken--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        titleTextStyle: const TextStyle(color: Colors.black),
        title: const Text("Keranjang belanja"),
      ),
      body: 
      ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    "Pemesanan",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      backgroundColor: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey,
                  ),
                  child: const Text(
                    "catatan",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.brown),
                    color: Colors.brown,
                  ),
                  child: const Text(
                    "Daftar Pesanan",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 25,
                      backgroundColor: Colors.brown,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                   Column(
                    children: [
                      Image(
                        image: AssetImage("minum2a.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Mocha Latte"),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "\$" + hargaMocha.toString(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterMocha,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterMocha.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterMocha,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 300),
                        child:  Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                   Column(
                    children: [
                      Image(
                        image: AssetImage("minum2.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Americano Hot"),
                        ],
                      ),
                      Row(
                        children: [Text("\$" + hargaAmerica.toString())],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterAmerica,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterAmerica.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterAmerica,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 300),
                        child: Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                   Column(
                    children: [
                      Image(
                        image: AssetImage("makanan1.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Ice Coffe Latte"),
                        ],
                      ),
                      Row(
                        children: [Text("\$" + hargaIce.toString())],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterIce,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterIce.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterIce,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 300),
                        child: Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                 Column(
                    children: [
                      Image(
                        image: AssetImage("makanan3.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Chocolate Croissant"),
                        ],
                      ),
                      Row(
                        children: [Text("\$" + hargaChocolate.toString())],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterChocolate,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterChocolate.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterChocolate,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 265),
                        child: Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                   Column(
                    children: [
                      Image(
                        image: AssetImage("makanan2.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Crispy Chicken Burger"),
                        ],
                      ),
                      Row(
                        children: [Text("\$" + hargaCrispy.toString())],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterCrispy,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterCrispy.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterCrispy,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 255),
                        child: Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Card(
              color: Colors.brown,
              child: Row(
                children: [
                   Column(
                    children: [
                      Image(
                        image: AssetImage("makanan5.png"),
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Column(
                    children: [
                       Row(
                        children: [
                          Text("Chicken Burger"),
                        ],
                      ),
                      Row(
                        children: [Text("\$" + hargaChicken.toString())],
                      ),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _decrementCounterChicken,
                                      icon: const Icon(Icons.remove),
                                    ),
                                  ),
                                  TextSpan(
                                    text: _counterChicken.toString(),
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    child: IconButton(
                                      onPressed: _incrementCounterChicken,
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 300),
                        child: Row(
                          children: [Icon(Icons.delete)],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 500),
                child: Icon(Icons.apps_rounded),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 10),
                child: Column(
                  children: [Text("Jumlah Pesanan")],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300, top: 10),
                child: Text(
                        '7',
                        style: TextStyle(color: Colors.white),
                      )
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [Text("Nama Pesanan")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 300, top: 10),
                child: Column(
                  children: [Text("Budi Setiawan")],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [Text("Nomor Meja")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350, top: 10),
                child: Column(
                  children: [Text("5")],
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [Text("Total Pesanan")],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 340),
                child: Column(
                  children: [Text("6")],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyPembayaran()));
              },
              child: Text("Pesan Sekarang"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(200, 50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
