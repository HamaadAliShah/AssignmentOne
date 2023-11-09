import 'package:flutter/material.dart';
import 'package:restaurent_management_app/screens/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 222, 89, 80),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.jpg'),
            ),
            const Text(
              "Chicken Bites",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const MenuScreen(),
                    ),
                  );
                },
                child: const Text("Menu"))
          ],
        ),
      ),
    );
  }
}
