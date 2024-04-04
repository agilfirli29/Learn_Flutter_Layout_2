import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        body: Container(
          padding: const EdgeInsets.all(10),
          child: const Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: Icon(Icons.people_sharp),
                  title: Text('AgilFirliGunawan'),
                  subtitle: Text('@agilfirli29'),
                ),
                Text(
                  'This is Card',
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
