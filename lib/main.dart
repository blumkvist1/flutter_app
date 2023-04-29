import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// this is your APP Main screen configuration
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("press");
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.edit),
      ),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('Page title'),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.add),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.favorite),
          ),
          Icon(Icons.settings),
        ],
        backgroundColor: Colors.blueAccent,
      ),
      /*******************--[focus here 🧐]--*******************/
      body: myWidget(context),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.brown,
          child: SizedBox(
              height: 56,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("top bottom bar"),
              ))),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          // Card(
          //   child: SizedBox(
          //       width: 120,
          //       height: 120,
          //       child: Center(child: Text("I am a card"))),
          //   color: Colors.blueAccent,
          //   elevation: 10,
          // ),
          // ListTile(
          //   dense: true,
          //   splashColor: Colors.grey,
          //   onTap: () => {print("hello")},
          //   title: Text("Hello"),
          //   subtitle: Text("Im subtitle"),
          //   tileColor: Colors.green,
          //   leading: CircleAvatar(
          //     child: Icon(Icons.mail),
          //   ),
          //   trailing: Icon(Icons.edit),
          // )

          // InputChip(
          //   backgroundColor: Colors.grey,
          //   selected: true,
          //   label: Text("Im a chip"),
          //   avatar: CircleAvatar(child: Icon(Icons.email),),
          //   isEnabled: true,
          // ),
          // FloatingActionButton.extended(
          //   onPressed: () {
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       SnackBar(
          //         content: Text("This is snack bar"),
          //         backgroundColor: Colors.pinkAccent,
          //         duration: Duration(seconds: 3),
          //         action: SnackBarAction(label: "OK", onPressed: (){print("Im snak bar");}),
          //         showCloseIcon: true,
          //       ),
          //     );
          //   },
          //   label: Text("ADD to card"),
          //   icon: Icon(Icons.add_shopping_cart),
          //   splashColor: Colors.lightGreenAccent,
          //   elevation: 10,
          //   extendedPadding: EdgeInsetsDirectional.symmetric(horizontal: 150),
          //   tooltip: "It is add to card butt",
          // )
        ],
      ),
    );
  }
}
