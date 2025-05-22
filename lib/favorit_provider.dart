import 'package:flutter/material.dart';

class Favorit_Provider extends ChangeNotifier {
  // initialData() async {
  //   setData = coffee1;
  // }

  dynamic _coffee1 = {
    "data": [
      {
        "nama": "Coffee Latte",
        "img": "assets/img1.jpg",
        "price": 16000,
        "rating": 4.5,
        "total": 0,
      },
      {
        "nama": "susu",
        "img": "assets/ img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "jus",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "air putih",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
      {
        "nama": "mimi",
        "img": "assets/img1.jpg",
        "price": 15000,
        "rating": 4.5,
        "total": 0
      },
    ]
  };
  dynamic get coffee1 => _coffee1;
  void totItem(int idx) {
    _coffee1["data"]![idx]["total"]++;
    notifyListeners();
  }

  void totminItem(int idx) {
    _coffee1["data"]![idx]["total"]--;
    notifyListeners();
  }

  // totharga(int indx) {
  //   _coffee1["data"]![indx]["price"] = _coffee1["data"]![indx]["price"] * ()
  //   notifyListeners();
  // }

  totharga(int indx) {
    _coffee1["data"]![indx]["price"] =
        _coffee1["data"]![indx]["price"] * _coffee1["data"]![indx]["total"];
    notifyListeners();
    print(hitung_ttl());
  }

  // totminharga(int indx) {
  //   _coffee1["data"]![indx]["price"]--;
  //   notifyListeners();
  // }
  int _ttl_harga = 0;
  int get ttl_harga => _ttl_harga;

  hitung_ttl() {
    for (int indx = 0; indx < _coffee1["data"].length; indx++) {
      // print(hitung_ttl());
      _ttl_harga += _coffee1["data"]![indx]["price"] as int;
      // print(hitung_ttl());
    }
    return ttl_harga;
  }

  // dynamic _data;
  // dynamic get data => _data;
  // set setData(val) {
  //   var tmp = json.encode(val);
  //   _data = json.decode(tmp);

  //   notifyListeners();
  // }

  // ubahList(val) {
  //   print('val');
  //   if (val == 'coffee') {
  //     setData = coffee1;
  //   } else
  //     setData = coffee2;
  // }
}
