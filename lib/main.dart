// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// this is your APP Main screen configuration
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text('Home Page',
            style: TextStyle(fontFamily: "Kdam", color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(fontFamily: "Kdam", color: Colors.black),
        iconSize: 30,
        unselectedLabelStyle: TextStyle(
          fontFamily: "Kdam",
        ),
        selectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      /*******************--[focus here 🧐]--*******************/
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    {
      return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            listTileGroup(),
            Text(
              "Categories",
              style: TextStyle(
                  fontFamily: "Kdam",
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            categoriesGroup(),
            personalCourses(),
            articles(),
          ],
        ),
      );
    }
  }

  Widget listTileGroup() {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 15),
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        child: Text(
          "M",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: "Kdam",
              fontWeight: FontWeight.bold),
        ),
      ),
      title: Text(
        'Welcome back,',
        style: TextStyle(
          color: Colors.black45,
          fontSize: 10,
          fontFamily: "Kdam",
        ),
      ),
      subtitle: Text(
        'Mikhail Gnezditskiy',
        style: TextStyle(
            color: Colors.black,
            fontSize: 11,
            fontFamily: "Kdam",
            fontWeight: FontWeight.w600),
      ),
      trailing: Icon(
        Icons.notification_important,
        color: Colors.black,
      ),
    );
  }

  Widget categoriesGroup() {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
      ),
      child: Wrap(
        spacing: 15,
        runSpacing: 10.0,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 30),
                  backgroundColor: Color.fromARGB(255, 223, 223, 223),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                "Java Script",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Kdam", color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  backgroundColor: Color.fromARGB(255, 223, 223, 223),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                "Java",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Kdam", color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shadowColor: Colors.grey,
                  fixedSize: const Size(100, 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Kdam",
                ),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  backgroundColor: Color.fromARGB(255, 223, 223, 223),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                "Swift",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Kdam", color: Colors.black),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 30),
                  backgroundColor: Color.fromARGB(255, 223, 223, 223),
                  shadowColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              child: Text(
                "Kotlin",
                style: TextStyle(
                    fontSize: 16, fontFamily: "Kdam", color: Colors.black),
              )),
        ],
      ),
    );
  }

  Widget personalCourses() {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 20, bottom: 10),
      title: Text(
        'Personally for you',
        style: TextStyle(
          color: Colors.black,
          fontFamily: "Kdam",
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Text(
        "View all",
        style: TextStyle(
          fontFamily: "Kdam",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget articles() {
    return Container(
      height: 320,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 230,
              margin: EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  Image.asset("assets/images/flutter1.jpg",
                      height: 320, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black87,
                      height: 60,
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Buy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 28)),
                            Text("123 P",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 24)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
              width: 230,
              margin: EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  Image.asset("assets/images/flutter2.jpg",
                      height: 320, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black87,
                      height: 60,
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Buy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 28)),
                            Text("123 P",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 24)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
              width: 230,
              margin: EdgeInsets.only(right: 15),
              child: Stack(
                children: [
                  Image.asset("assets/images/flutter2.jpg",
                      height: 320, fit: BoxFit.cover),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.black87,
                      height: 60,
                      child: Container(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Buy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 28)),
                            Text("123 P",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Kdam",
                                    fontSize: 24)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
