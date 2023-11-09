import 'package:flutter/material.dart';

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
              height: 200,
              width: 250,
              image: AssetImage(image!),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    name!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    discription!,
                  ),
                  Text("Rs $price"),
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [ElevatedButton(onPressed: () {}, child: const Text('Add'))],
              )
            ],
          ),
        ],
      ),
    );
  }
}
