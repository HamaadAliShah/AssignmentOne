import 'package:flutter/material.dart';
import 'package:networking_and_database/provider/shared_preference.dart';
import 'package:provider/provider.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared preference'),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_4),
            onPressed: () {
              ThemeChanger themeChanger = Provider.of<ThemeChanger>(context, listen: false);
              themeChanger.toggleTheme();
            },
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Welcome to Flutter Theme',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
