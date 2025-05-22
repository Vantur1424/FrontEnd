import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPesan extends StatefulWidget {
  const MyPesan({super.key});

  @override
  State<MyPesan> createState() => _MyPesanState();
}

class _MyPesanState extends State<MyPesan> {
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
                  "Pesanan Diterima",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Bayar Pesanan",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 17,
                            color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13.0)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 12.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: ElevatedButton(
                      onPressed: () {},
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
