import 'package:flutter/material.dart';
import 'package:restaurent_management_app/screens/beverges_screen.dart';
import 'package:restaurent_management_app/screens/burger_screen.dart';
import 'package:restaurent_management_app/screens/pizza_screen.dart';
import 'package:restaurent_management_app/screens/wraps_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Menu Screen'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Image(
              image: AssetImage('assets/images/burger.jpg'),
            ),
            subtitle: const Center(
              child: Text(
                "Burgers",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const BurgerScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Image(
              image: AssetImage('assets/images/pizza.jpg'),
            ),
            subtitle: const Center(
              child: Text(
                "Pizza",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const PizzaScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Image(
              image: AssetImage('assets/images/roll.jpg'),
            ),
            subtitle: const Center(
              child: Text(
                "Wraps",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const WrapsScreen(),
                ),
              );
            },
          ),
          ListTile(
            title: const Image(
              image: AssetImage('assets/images/beverages.jpg'),
            ),
            subtitle: const Center(
              child: Text(
                "Beverges",
                style: TextStyle(fontSize: 20),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const BeveragesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
