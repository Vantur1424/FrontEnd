import 'package:coffeeshope/homePage.dart';
import 'package:coffeeshope/makanan.dart';
import 'package:coffeeshope/minuman.dart';
import 'package:coffeeshope/snack.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

  void _navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [homePage(), Makanan(), Minuman(), Snack()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coffeshop"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.brown.shade400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: GNav(
              backgroundColor: Colors.brown.shade400,
              color: Colors.black,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              padding: EdgeInsets.all(16),
              gap: 8,
              onTabChange: _navigationBar,
              tabs: const [
                GButton(icon: Icons.home, text: "Home"),
                GButton(icon: Icons.fastfood, text: "Makanan"),
                GButton(icon: Icons.local_drink, text: "Minuman"),
                GButton(icon: Icons.cake_outlined, text: "Snack"),
              ]),
        ),
      ),
    );
  }
}
