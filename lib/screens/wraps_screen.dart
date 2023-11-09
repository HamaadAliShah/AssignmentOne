import 'package:flutter/material.dart';
import 'package:restaurent_management_app/custom/custom_widget.dart';
import 'package:restaurent_management_app/screens/order_screen.dart';

class WrapsScreen extends StatelessWidget {
  const WrapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Wraps Screen'),
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
            name: 'Mayo garlic wraps',
            price: 200,
            discription: 'A delectable fusion of mayonnaise',
            image: 'assets/images/mayogarlicwraps.jpg',
          ),
          CustomWidget(
            name: 'Zinger Wraps',
            price: 250,
            discription: 'Spicy adventure with zesty chicken',
            image: 'assets/images/Zingerwraps.jpg',
          ),
          CustomWidget(
            name: 'Spring Wraps',
            price: 300,
            discription: 'Delicate wraps filled with seasonal flavors',
            image: 'assets/images/springwraps.jpg',
          ),
        ],
      ),
    );
  }
}
