import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class CacheManagerScreen extends StatelessWidget {
  final String imageUrl = 'https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=2048x2048&w=is&k=20&c=Xa_wH_pZFMWNX8EPtufv9KSvS1OzUPus7C0Br2ZIMDg=';

  const CacheManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cache Manager Example'),
      ),
      body: Center(
        child: FutureBuilder<File>(
          future: DefaultCacheManager().getSingleFile(imageUrl),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                return Image.file(snapshot.data!);
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
