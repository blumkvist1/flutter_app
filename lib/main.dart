import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(
            height: 25,
          ),
          exercise1(),
          SizedBox(
            height: 25,
          ),
          exercise2(),
          SizedBox(
            height: 25,
          ),
          exercise3(),
          SizedBox(
            height: 25,
          ),
          exercise4(),
          SizedBox(
            height: 25,
          ),
          exercise5(),
          SizedBox(
            height: 25,
          ),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      )),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return const Text(
      "Welcome to Lab1",
      style: TextStyle(
        backgroundColor: Color.fromARGB(255, 115, 115, 115),
        fontSize: 50,
        color: Color.fromARGB(255, 88, 255, 94),
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget exercise2() {
    return const Icon(
      Icons.share,
      size: 100,
      color: Colors.blue,
    );
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return ElevatedButton(
        onPressed: () {
          print("click");
        },
        onLongPress: () {
          print("long press");
        },
        child: const Text(
          'Click here',
          style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 25)));
  }

  Widget exercise4() {
    return ElevatedButton(
        onPressed: () {
          print("click");
        },
        onLongPress: () {
          print("long press");
        },
        child: Icon(
          Icons.favorite,
          color: Colors.greenAccent,
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 28),
          shape: StadiumBorder(),
          backgroundColor: Colors.black,
        ));
  }
}

Widget exercise5() {
  return OutlinedButton(
      onPressed: () {
        print("click");
      },
      onLongPress: () {
        print("long press");
      },
      child: const Text(
        'Button to press',
        style: TextStyle(fontSize: 18, color: Colors.redAccent),
      ),
      style: OutlinedButton.styleFrom(
          side: BorderSide(width: 3.0, color: Colors.orangeAccent),
          padding: EdgeInsets.symmetric(horizontal: 80, vertical: 25)));
}

Widget exercise6() {
  return Container(
    height: 200.0,
    width: 200.0,
    decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 233, 32),
        border: Border(
            left: BorderSide(
              color: Color.fromARGB(255, 0, 100, 182),
              width: 10.0,
            ),
            top: BorderSide(
              color: Color.fromARGB(255, 119, 194, 255),
              width: 10.0,
            ),
            bottom: BorderSide(
              color: Colors.red,
              width: 10.0,
            ),
            right: BorderSide(
              color: Colors.purple,
              width: 10.0,
            ))),
    child: Icon(
      Icons.warning,
      size: 35,
    ),
  );
}
