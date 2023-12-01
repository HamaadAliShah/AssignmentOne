import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:package_and_firebase_intigiration/fl_chart_screen.dart';
import 'package:package_and_firebase_intigiration/http_screen.dart';
import 'package:package_and_firebase_intigiration/url_launcher_screen.dart';
// import 'package:chat_app_pkg/chat_app_pkg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TextForScreen.greeting;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: CSSColors.gray,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
              child: const Text("Api calling"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text("Chart Screen"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const UrlLink()),
                );
              },
              child: const Text("Url Screen"),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const ()),
            //     );
            //   },
            //   child: const Text("Chat App"),
            // ),
          ],
        ),
      ),
    );
  }
}
