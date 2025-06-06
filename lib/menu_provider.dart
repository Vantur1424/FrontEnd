import 'package:flutter/material.dart';

class Menu_Provider extends ChangeNotifier {
  void intstate() {
    isFristNmaeEmpty = false;
    isLastNameEmpty = false;
    isUserNameEmpty = false;
    isEmailAddressEmpty = false;
    isPasswordEmpty = false;
  }

  bool? isFristNmaeEmpty;
  bool? isLastNameEmpty;
  bool? isUserNameEmpty;
  bool? isEmailAddressEmpty;
  bool? isPasswordEmpty;

  TextEditingController fristNameController = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();

  TextEditingController get fristNameController1 => fristNameController;
  TextEditingController get lastname1 => lastName;
  TextEditingController get username1 => username;
  TextEditingController get emailaddress1 => emailAddress;
  TextEditingController get password1 => password;

  TextEditingController item = TextEditingController();

  TextEditingController get item1 => item;

  dynamic _menu = {
    "data": [
      {
        "nama": "Cappucino Panas",
        "subtitle": "With Topping",
        "img": "./assets/Minum2a.png",
        "harga": 2.00,
        "rating": 4.5,
        "ukuran": "250mL",
        "deskripsi":
            "Cappuccino Panas diseduhi dengan Topping Americano.secangkir kopi nikmat yang atasnya dipenuhi buih (milk foam) yang bagian dasarnya dipenuhi espresso mixed susu,",
        "total": 0,
      },
      {
        "nama": "Mocha Latte",
        "img": "./assets/minum2.png",
        "harga": 2.19,
        "rating": 4.5,
        "ukuran": "250mL",
        "deskripsi":
            "Mocha Latte  merupakan kombinasi dari cokelat dan Espresso yang menghasilkan rasa manis, kuat, dan nikmat dalam satu tegukan.biasanya menggunakan dark chocolate yang dicampur dengan seduhan Espresso, lalu diaduk, kemudian disajikan dengan Latte style steamed milk.",
        "total": 0,
      },
      {
        "nama": "Kopi Hitam",
        "img": "./assets/minum3.png",
        "harga": 1.95,
        "rating": 4.5,
        "ukuran": "250mL",
        "deskripsi":
            "Black coffee adalah salah satu minuman kopi yang biasanya dibuat dengan menggunakan mesin yang bisa menghasilkan kopi dengan rasa yang pahit.",
        "total": 0,
      },
      {
        "nama": "Es Americano",
        "img": "./assets/Minum4.png",
        "harga": 2.25,
        "rating": 4.75,
        "ukuran": "275mL",
        "deskripsi":
            "Ice Americano merupakan kopi espresso yang ditambahkan air di dalamnya. Minuman ini juga ditambah es batu agar lebih dingin. Espresso sendiri dibuat dari ekstrak biji kopi yang diproses dengan mesin tekanan tinggi dan sedikit air.",
        "total": 0,
      },
      {
        "nama": "Ekspresso",
        "img": "./assets/Minum6.png",
        "harga": 1.75,
        "rating": 4.0,
        "ukuran": "200mL",
        "deskripsi":
            "  Espresso merupakan kopi yang dihasilkan dari proses penyeduhan kopi dengan tekanan dan suhu tinggi. Kopi espresso dibuat dengan menggiling kopi hingga halus.",
        "total": 0,
      },
      {
        "nama": "Kentang Goreng",
        "img": "./assets/Makanan1.png",
        "harga": 1.85,
        "rating": 4.5,
        "deskripsi":
            " Kentang goreng adalah hidangan yang dibuat dari potongan-potongan kentang yang digoreng dalam minyak goreng panas",
        "total": 0,
      },
      {
        "nama": "Burger Bulgogi",
        "img": "./assets/Makanan4.png",
        "harga": 2.75,
        "rating": 4.5,
        "deskripsi":
            " Perpaduan roti burger dengan daging cincang manis dan gurih ini berpadu seimbang ditambah tetesan jeruk nipis sungguh sangat lezat",
        "total": 0,
      },
      {
        "nama": "Croissant Coklat",
        "img": "./assets/Makanan3.png",
        "harga": 3.0,
        "rating": 4.5,
        "deskripsi":
            "Croissant adalah roti atau kue kering (pastry) yang populer sebagai hidangan khas di Prancis, berbentuk bulan sabit, dan berlapis-lapis",
        "total": 0,
      },
      {
        "nama": "Tiramisu Klasik",
        "img": "./assets/Makanan2.png",
        "harga": 5.15,
        "rating": 4.5,
        "deskripsi":
            " Tiramisù (Tiramesù) adalah kue keju khas Italia dengan taburan bubuk kakao di atasnya. Kue ini merupakan hidangan penutup yang dimakan dengan sendok",
        "total": 0,
      },
      {
        "nama": "Kue Tiramisu Coklat Hitam",
        "img": "./assets/Makanan5.png",
        "harga": 10.0,
        "rating": 4.5,
        "deskripsi":
            "Kue cokelat murni yang lezat ini menampilkan kue bolu cokelat hitam yang lembut dan lembap, dilapisi dan dilapisi dengan frosting cokelat hitam beludru.",
        "total": 0,
      },
      {
        "nama": "Kue Keju",
        "img": "./assets/snack1.png",
        "harga": 10.0,
        "rating": 4.5,
        "deskripsi":
            "terbuat dari campuran susu dan krim. Proses ini menghasilkan tekstur keju yang lebih lembut dan ringan.",
        "total": 0,
      },
      {
        "nama": "Waffle Belgia",
        "img": "./assets/Snack4.png",
        "harga": 10.0,
        "rating": 4.5,
        "deskripsi":
            "Belgian Waffle merupakan kudapan khas yang berasal dari Belgia dengan adonan berbasis kue berbahan dasar tepung terigu yang dimasak dengan besi waffle bermotif untuk memberikan bentuk dan ciri yang khas.",
        "total": 0,
      },
      {
        "nama": "Roti Selai Panini",
        "img": "./assets/Snack3.png",
        "harga": 10.0,
        "rating": 4.5,
        "deskripsi":
            "roti ini diberi isian peanut butter alias selai kacang yang crunchy.",
        "total": 0,
      },
      {
        "nama": "Cinnamon Roll",
        "img": "./assets/Snack5.png",
        "harga": 10.5,
        "rating": 4.5,
        "deskripsi":
            "Burger isi daging ayam yang dibalut dengan keju mozzarella serta tomat dan selada dengan tambahan kentang goreng",
        "total": 0,
      },
      {
        "nama": "Roti Tuna",
        "img": "./assets/Snack2.png",
        "harga": 10.0,
        "rating": 4.5,
        "deskripsi":
            "Cinnamon roll merupkaan roti gulung yang berisikan gula palem dengan bubuk kayu manis dan cream cheese frosting sebagai toppingnya.",
        "total": 0,
      },
    ]
  };

  dynamic get menu => _menu;
  void toItem(int idx) {
    _menu["data"]![idx]["total"]++;
    notifyListeners();
  }

  void tominItem(int idx) {
    _menu["data"]![idx]["total"]--;
    notifyListeners();
  }

  toharga(int indx) {
    _menu["data"]![indx]["harga"] =
        _menu["data"]![indx]["harga"] * _menu["data"]![indx]["total"];
    notifyListeners();
    print(hitung_ttl());
  }

  int _ttl_harga = 0;
  int get ttl_harga => _ttl_harga;

  hitung_ttl() {
    for (int indx = 0; indx < _menu["data"].length; indx++) {
      _ttl_harga += _menu["data"]![indx]["harga"] as int;
    }
    return ttl_harga;
  }
}
