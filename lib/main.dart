import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SecondScreen(),
          )),
          child: Hero(
            tag: 'photo',
            child: Image.network(
              'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
              width: 50,
              height: 60,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('Move to Second Screen'),
        ),
      ]),
    ));
  }
}

class SecondScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Hero(
        tag: 'photo',
        child: Image.network(
          'https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png',
        ),
      ),
    );
  }
}
