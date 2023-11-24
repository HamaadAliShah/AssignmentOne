import 'package:flutter/material.dart';
import 'package:networking_and_database/screen/cache_manager.dart';
import 'package:networking_and_database/screen/chat_screen.dart';
import 'package:networking_and_database/screen/database_screen.dart';
import 'package:networking_and_database/screen/dio_screen.dart';
import 'package:networking_and_database/screen/error_handling.dart';
import 'package:networking_and_database/screen/http_screen.dart';
import 'package:networking_and_database/screen/toggle_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HttpScreen()),
                );
              },
              child: const Text('Http'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DioScreen()),
                );
              },
              child: const Text('Dio'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ErrorHandlingScreen()),
                );
              },
              child: const Text('Error Handling'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()),
                );
              },
              child: const Text('Chat Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ToggleScreen()),
                );
              },
              child: const Text('Toggle Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataBaseScreen()),
                );
              },
              child: const Text('Database Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CacheManagerScreen()),
                );
              },
              child: const Text('Cache Manager Screen'),
            )
          ],
        ),
      ),
    );
  }
}
