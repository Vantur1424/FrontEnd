import 'package:coffeeshope/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPesanLain extends StatefulWidget {
  const MyPesanLain({super.key});

  @override
  State<MyPesanLain> createState() => _MyPesanLainState();
}

class _MyPesanLainState extends State<MyPesanLain> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.brown,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300, // Atur lebar checkbox
                  height: 170, // Atur tinggi checkbox
                  child: Align(
                    alignment:
                        Alignment.topCenter, // Mengatur posisi checkbox ke atas
                    child: Transform.scale(
                      scale:
                          14, // Atur faktor skala untuk memperbesar checkbox dan bulatannya
                      child: Checkbox(
                        value: _isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            _isChecked = newValue ?? false;
                          });
                        },
                        shape: CircleBorder(),
                        checkColor: Colors.brown.shade700,
                        activeColor: Colors.brown.shade300,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  "Pembayaran Selesai",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 85),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyHome()));
                      },
                      child: Text(
                        "Bayar Lainnya",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 12.0),
                      ),
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
