import 'package:coffeeshope/PesananLain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPembayaran extends StatefulWidget {
  const MyPembayaran({super.key});

  @override
  State<MyPembayaran> createState() => _MyPembayaranState();
}

class _MyPembayaranState extends State<MyPembayaran> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Center(
            child: Text(
              "Pilih Opsi Pembayaran",
              style: TextStyle(
                color: Color.fromARGB(255, 224, 183, 183),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor:
            Colors.brown.shade300, // Ubah warna latar belakang halaman
        body: ListView(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Menggeser ke kiri
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 10), // Spasi sebelum teks
                  Text(
                    "Metode yang direkomendasi",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              height: 50,
              color: Colors.brown.shade300,
            ),
            SizedBox(height: 8),
            Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Menempatkan icon di kiri
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.wallet),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(width: 10), // Jarak antara icon dan teks "Cash"
                    ],
                  ),
                  Positioned(
                    right: 23,
                    top: 8,
                    child: Container(
                      width: 23,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 20,
                    child: Text(
                      "Cash",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              height: 65,
              color: Colors.brown,
            ),
            SizedBox(height: 8),
            Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Menempatkan icon di kiri
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.wallet_travel),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(width: 10), // Jarak antara icon dan teks "Cash"
                    ],
                  ),
                  Positioned(
                    right: 23,
                    top: 8,
                    child: Container(
                      width: 23,
                      height: 50,
                      decoration: BoxDecoration(),
                      child: Icon(
                        Icons
                            .arrow_forward_ios, // Tambahkan ikon check pada ceklis kedua
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 20,
                    child: Text(
                      "Dompet Digital",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 45,
                    child: Text(
                      'Gopay,Ovo,Dana,Dll',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
              height: 65,
              color: Colors.brown,
            ),
            SizedBox(height: 8),
            Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Menempatkan icon di kiri
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.wallet_membership),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                      SizedBox(width: 10), // Jarak antara icon dan teks "Cash"
                    ],
                  ),
                  Positioned(
                    right: 23,
                    top: 8,
                    child: Container(
                      width: 23,
                      height: 50,
                      decoration: BoxDecoration(),
                      child: Icon(
                        Icons
                            .arrow_forward_ios, // Tambahkan ikon check pada ceklis ketiga
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 18),
                  Positioned(
                    left: 50,
                    top: 20,
                    child: Text(
                      "M- Bangking",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 45,
                    child: Text(
                      'Brizzy,Brimo,Dll',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              height: 65,
              color: Colors.brown,
            ),
            SizedBox(height: 70),
            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyPesanLain(),
                      ),
                    );
                  },
                  child: Text(
                    "Bayar Pesanan",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.0)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 70, vertical: 12.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
