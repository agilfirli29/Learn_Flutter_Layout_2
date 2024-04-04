import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        // body: Stack(
        //   alignment: Alignment.bottomLeft,
        //   children: [
        //     Image.asset('images/headspace.jpg'),
        //     Container(
        //       padding: EdgeInsets.all(10),
        //       color: Colors.grey,
        //       child: Text(
        //         '@shevabey',
        //         style: TextStyle(fontSize: 50),
        //       ),
        //     )
        //   ],
        // ),

        body: Container(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  child: Text('Lorem Ipsum'),
                  color: Colors.yellow,
                  padding: EdgeInsets.all(10),
                ),
                left: 50,
                top: 100,
              ),
            ],
          ),
          margin: EdgeInsets.only(top: 100),
          width: 250,
          height: 300,
          color: Colors.blue,
        ),
      ),
    );
  }
}
