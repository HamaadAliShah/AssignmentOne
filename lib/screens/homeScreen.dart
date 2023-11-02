import 'package:flutter/material.dart';
import 'package:flutter_first_application/screens/secondScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage('assets/images/wallpaper.jpg'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Insights from the Images",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "The image shows a grassy field with a sunset in the background. The sun is a fiery orange, and the sky is ablaze with color. The clouds are wispy and white, and they contrast beautifully with the deep blue sky. The grass is green and lush, and it looks very inviting.",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("The image is very calming and peaceful. The colors are soft and muted, and the overall effect is very serene. I can imagine myself sitting in this field, enjoying the sunset and the peace and quiet."),
                SizedBox(
                  height: 5,
                ),
                Text("Overall, the image is very beautiful and evocative. It captures the beauty of nature and the serenity of a sunset.")
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondScreen()),
              );
            },
            child: const Text("Next screen"),
          )
        ],
      ),
    );
  }
}
