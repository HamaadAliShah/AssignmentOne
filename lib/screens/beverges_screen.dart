import 'package:flutter/material.dart';
import 'package:restaurent_management_app/custom/custom_widget.dart';
import 'package:restaurent_management_app/screens/order_screen.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Beverages Screen'),
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
            name: '7up',
            price: 100,
            discription: 'Zesty and thirst-quenching experience',
            image: 'assets/images/7up.jpg',
          ),
          CustomWidget(
            name: 'Fajita Pizza',
            price: 100,
            discription: 'Blending Unique ice cream soda flavors',
            image: 'assets/images/pakola.jpg',
          ),
          CustomWidget(
            name: 'Mirinda',
            price: 100,
            discription: 'Perfect fusion of zesty orange flavor ',
            image: 'assets/images/mirinda.jpg',
          ),
        ],
      ),
    );
  }
}
