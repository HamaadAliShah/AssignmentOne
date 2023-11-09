import 'package:flutter/material.dart';
import 'package:restaurent_management_app/screens/checkout_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Screen'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Order:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Item",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Quantity",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Price",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            OrderItem(
              name: 'Tikka Pizza',
              price: '1000',
              quantity: '1',
            ),
            OrderItem(
              name: 'Mirinda',
              price: '100',
              quantity: '1',
            ),
            OrderItem(
              name: 'Zinger Burger',
              price: '450',
              quantity: '1',
            ),
            const SizedBox(height: 20),
            const Text(
              'Total: Rs 1550',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const CheckOutScreen(),
                  ),
                );
              },
              child: const Text('Confirm Order'),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  String? name;
  String? price;
  String? quantity;

  OrderItem({super.key, this.name, this.price, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name!, style: const TextStyle(fontSize: 16)),
        Text(quantity!, style: const TextStyle(fontSize: 16)),
        Text(price!, style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
