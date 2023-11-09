import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 222, 89, 80),
        title: const Text('Item Screen'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          CustomWidget(
            name: 'Chicken Burger',
            price: 400,
            discription: 'crispy chicken burger with cheese',
            image: 'assets/images/burger.jpg',
          )
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String? name;
  final String? discription;
  final int? price;
  final String? image;

  const CustomWidget({super.key, this.name, this.discription, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Image(
              image: AssetImage(image!),
            ),
          ),
          Text(name!),
          Text(discription!),
          Text("$price"),
        ],
      ),
    );
  }
}
