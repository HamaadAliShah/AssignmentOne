import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioScreen extends StatefulWidget {
  const DioScreen({super.key});

  @override
  State<DioScreen> createState() => _DioScreenState();
}

class _DioScreenState extends State<DioScreen> {
  Future<List<Map<String, dynamic>>> fetchData(int limit) async {
    String apiUrl = 'https://jsonplaceholder.typicode.com/photos';
    final dio = Dio();

    try {
      final response = await dio.get(apiUrl, queryParameters: {'_limit': limit});
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: fetchData(5),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final List<Map<String, dynamic>> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: Text(item['title']),
                  subtitle: Text('ID: ${item['id']}'),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item['thumbnailUrl']),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
