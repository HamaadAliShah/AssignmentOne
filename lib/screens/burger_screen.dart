import 'package:flutter/material.dart';
import 'package:restaurent_management_app/custom/custom_widget.dart';
import 'package:restaurent_management_app/screens/order_screen.dart';

class BurgerScreen extends StatelessWidget {
  const BurgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Burger Screen'),
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
            name: 'Chicken Burger',
            price: 400,
            discription: 'crispy chicken burger with cheese',
            image: 'assets/images/chickenburger.jpg',
          ),
          CustomWidget(
            name: 'Zinger Burger',
            price: 450,
            discription: 'crispy Zinger burger with cheese',
            image: 'assets/images/zingerBurger.jpg',
          ),
          CustomWidget(
            name: 'Beef Burger',
            price: 500,
            discription: 'crispy Beef burger with cheese',
            image: 'assets/images/beefburger.jpg',
          ),
        ],
      ),
    );
  }
}
