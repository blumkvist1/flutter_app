import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showShape = true;
  bool isBlueCircle = true;
  int indexFlutterLogo = 0;
  bool isShowHeart = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Lab 3',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: AnimatedContainer(
        margin: EdgeInsets.all(20),
        duration: Duration(milliseconds: 450),
        width: screenWidth,
        height: showShape ? screenHeight : 60,
        // to 0 when click on it, to screen height when also click on it
        color: Colors.indigo,
        child: Stack(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.yellow,
              child: InkWell(
                onTap: () {
                  showShape = !showShape;
                  setState(() {});
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                        child: Text(
                      'Click to Expand',
                      style: TextStyle(fontSize: 18),
                    )),
                    Icon(showShape
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    changeShapes(screenWidth),
                    flutterChanger(screenWidth),
                    showHide(screenWidth),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget changeShapes(double width) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,
            child: InkWell(
              onTap: () {
                isBlueCircle = !isBlueCircle;
                setState(() {});
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: isBlueCircle ? Colors.blue : Colors.red,
                        shape:
                            isBlueCircle ? BoxShape.circle : BoxShape.rectangle,
                      )),
                  Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: isBlueCircle ? Colors.red : Colors.blue,
                        shape:
                            isBlueCircle ? BoxShape.rectangle : BoxShape.circle,
                      ))
                ],
              ),
            ),
          ),
        ));
  }

  Widget flutterChanger(double width) {
    List<FlutterLogoStyle> logoStyle = [
      FlutterLogoStyle.markOnly,
      FlutterLogoStyle.horizontal,
      FlutterLogoStyle.stacked,
    ];

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,

            /// ********** Do changes in child below ********** ///

            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100.0,
                    height: 100.0,
                    child: FlutterLogo(
                      duration: Duration(milliseconds: 450),
                      style: logoStyle[indexFlutterLogo],
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                        onPressed: () {
                          if (indexFlutterLogo == 2) {
                            indexFlutterLogo = 0;
                          } else {
                            indexFlutterLogo++;
                          }
                          setState(() {});
                        },
                        color: Colors.white,
                        icon: const Icon(
                          Icons.autorenew_outlined,
                        )),
                  ),
                ]),
          ),
        ));
  }

  Widget showHide(double width) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,

            /// ********** Do changes in child below ********** ///
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Visibility(
                    visible: isShowHeart,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Icon(Icons.favorite, size: 80, color: Colors.red)),
                InkWell(
                    onTap: () {
                      isShowHeart = !isShowHeart;
                      setState(() {});
                    },
                    child: Icon(
                        isShowHeart
                            ? Icons.lock_outline
                            : Icons.lock_open_outlined,
                        size: 50,
                        color: Colors.deepPurple))
              ],
            ),
          ),
        ));
  }
}
