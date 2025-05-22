import 'package:coffeeshope/Login.dart';
import 'package:coffeeshope/menu_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class Registrasi1 extends StatefulWidget {
  const Registrasi1({Key? key}) : super(key: key);

  @override
  State<Registrasi1> createState() => _Registrasi1State();
}

class _Registrasi1State extends State<Registrasi1> {
  DateTime selectedDate = DateTime.now();
  TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool _isPasswordVisible = false;
    var prov = Provider.of<Menu_Provider>(context);

    void _togglePasswordVisibility() {
      setState(() {
        _isPasswordVisible = !_isPasswordVisible;
      });
    }

    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: const Text('CoffeShope'),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  const Text(
                    'Daftar Gratis Sekarang!!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    "Daftar Akunmu!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.fristNameController,
                          decoration: InputDecoration(
                            errorText: prov.isFristNmaeEmpty == true
                                ? 'Nama depan harus di isi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Nama Depan",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "Nama Depan",
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.lastName,
                          decoration: InputDecoration(
                            errorText: prov.isLastNameEmpty == true
                                ? 'Nama Depan harus diisi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "Nama Belakang",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "Nama Belakang",
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.username,
                          decoration: InputDecoration(
                            errorText: prov.isUserNameEmpty == true
                                ? 'Username harus di isi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: "UserName",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "UserName",
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.emailaddress1,
                          decoration: InputDecoration(
                            errorText: prov.isEmailAddressEmpty == true
                                ? 'Alamat Email harus di isi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: "Alamat Email",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "Alamat Email",
                            labelStyle: const TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.password,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            errorText: prov.isPasswordEmpty == true
                                ? 'Kata Sandi harus di isi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: "Kata Sandi",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "Kata Sandi",
                            labelStyle: const TextStyle(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: _togglePasswordVisibility,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          controller: prov.password,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            errorText: prov.isPasswordEmpty == true
                                ? 'Ketik Ulang Kata Sandi Harus Diisi'
                                : null,
                            filled: true,
                            fillColor: Colors.white,
                            border: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            hintText: "Ketik Ulang Kata Sandi",
                            hintStyle: const TextStyle(color: Colors.black12),
                            labelText: "Ketik Ulang Kata Sandi",
                            labelStyle: const TextStyle(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                              onPressed: _togglePasswordVisibility,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _date,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_month),
                              labelText: "Pilih Tanggal Lahir Kamu"),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now());

                            if (pickeddate != null) {
                              setState(() {
                                _date.text = pickeddate.toString();
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {
                          prov.isFristNmaeEmpty =
                              prov.fristNameController1.text.isEmpty;
                          prov.lastname1.text.isEmpty;
                          prov.username1.text.isEmpty;
                          prov.emailaddress1.text.isEmpty;
                          prov.password1.text.isEmpty;

                          if (prov.fristNameController.text.isEmpty) {
                            setState(() {
                              prov.isFristNmaeEmpty = true;
                            });
                          }
                          if (prov.lastName.text.isEmpty) {
                            setState(() {
                              prov.isLastNameEmpty = true;
                            });
                          }
                          if (prov.username.text.isEmpty) {
                            setState(() {
                              prov.isUserNameEmpty = true;
                            });
                          }
                          if (prov.emailAddress.text.isEmpty) {
                            setState(() {
                              prov.isEmailAddressEmpty = true;
                            });
                          }
                          if (prov.password.text.isEmpty) {
                            setState(() {
                              prov.isPasswordEmpty = true;
                            });
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyLogin()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor:
                                Colors.black),
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
