import 'package:flutter/material.dart';
import 'package:restaurent_management_app/custom/custom_widget.dart';
import 'package:restaurent_management_app/screens/order_screen.dart';

class PizzaScreen extends StatelessWidget {
  const PizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Pizza Screen'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const OrderScreen(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView(
        children: const [
          CustomWidget(
            name: 'Tikka Pizza',
            price: 1000,
            discription: 'Spicy tikka chicken with cheese',
            image: 'assets/images/tikkapizza.jpg',
          ),
          CustomWidget(
            name: 'Fajita Pizza',
            price: 1000,
            discription: 'Mexican-inspired fajita flavors pizza',
            image: 'assets/images/fajitapizza.jpg',
          ),
          CustomWidget(
            name: 'Afghani Pizza',
            price: 1000,
            discription: 'Afghan masterpiece delivering a taste',
            image: 'assets/images/afghanipizza.jpg',
          ),
        ],
      ),
    );
  }
}
