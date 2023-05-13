// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // to change your app color change this
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            'Flower Shop',
            style: TextStyle(
              fontFamily: 'Kdam',
            ),
          ),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            flowerDetails(context),
          ],
        ));
  }
}

Widget flowerDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.amber,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        iconGroup(),
        textGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg

Widget imageGroup() {
  return Container(child: Image.asset("assets/images/yellow.jpeg")
      // child: Text("Im cant to load image to web, I will fix this problem later "),
      // width: 480,
      // height: 250,
      // color: Colors.yellow,
      );
}

Widget titleGroup() {
  return ListTile(
    contentPadding: EdgeInsets.only(top: 16, bottom: 8),
    onLongPress: () {},
    title: Text(
      "Sunny Flowers",
      style: TextStyle(
        fontSize: 52,
        fontStyle: FontStyle.italic,
        fontFamily: 'Kdam',
      ),
    ),
    subtitle: Text(
      "12 dosen",
      style: TextStyle(color: Colors.black54, fontSize: 14),
    ),
  );
}

Widget iconGroup() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Icon(
        Icons.share,
        size: 50,
        color: Colors.indigo,
      ),
      Icon(
        Icons.favorite,
        size: 50,
        color: Colors.indigo,
      )
    ],
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget textGroup() {
  return Container(
      padding: EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s Lorem Ipsum is simply dummy text of the printing and typesetting industry ',
        style: TextStyle(
          color: Colors.black87,
          fontStyle: FontStyle.italic,
          fontFamily: 'Kdam',
          fontSize: 13,
        ),
      ));
}

Widget buttonGroup() {
  return Container(
      padding: EdgeInsets.only(top: 25, bottom: 8),
      child: ElevatedButton.icon(
        onPressed: () => {},
        icon: Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
        label: Text("ADD TO CART",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: 'Kdam',
            )),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.indigo),
          fixedSize: MaterialStateProperty.all(const Size(480, 52)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ));
}
