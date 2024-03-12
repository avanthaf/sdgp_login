import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('HTTP Test'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              final response = await http.get(
                  Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
              if (response.statusCode == 200) {
                print('Response: ${response.body}');
                // Internet connection is working
              } else {
                print('Failed to fetch data: ${response.statusCode}');
                // Internet connection is not working
              }
            },
            child: Text('Test HTTP Connection'),
          ),
        ),
      ),
    );
  }
}
