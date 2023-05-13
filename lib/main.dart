import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.red, accentColor: Colors.blueAccent)),
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
        appBar: AppBar(
            leading: Icon(Icons.android_sharp),
            title: const Text('Flutter course')),
        body: Center(
            child: Column(children: [
          FlutterLogo(size: 300, style: FlutterLogoStyle.horizontal),
          ElevatedButton(child: Text("Enroll to Course"), onPressed: () {})
        ])));
  }
}