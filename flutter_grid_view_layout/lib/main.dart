import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Welcome to Flutter',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.count(
          padding: EdgeInsets.all(10),
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          crossAxisCount: 3,
          children: List.generate(20, (index) {
            return Container(
              color: Colors.green,
              child: Center(
                child: Text('Level $index'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
