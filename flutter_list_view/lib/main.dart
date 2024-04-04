import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Welcome to Flutter",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'Welcome to Flutter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ListView.separated(
            padding: EdgeInsets.all(10.0),
            itemCount: items.length,
            itemBuilder: (BuildContext ctx, int index) {
              return Container(
                height: 100,
                child: Text('Level ${items[index]}'),
              );
            },
            separatorBuilder: (BuildContext contex, int index) =>
                const Divider(),
          )),
    );
  }
}
