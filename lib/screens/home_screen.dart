import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:localization_and_device_feature/screens/camera_screen.dart';
import 'package:localization_and_device_feature/screens/hero_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await availableCameras().then(
                  (value) => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CameraPage(cameras: value),
                    ),
                  ),
                );
              },
              child: const Text("Camera feature"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HeroList(),
                  ),
                );
              },
              child: const Text("Localization"),
            ),
          ],
        ),
      ),
    );
  }
}
