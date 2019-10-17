import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz/UI/Home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

List<TabItem> tabItems = List.of(
  [
    new TabItem(Icons.shopping_cart, "", Color.fromARGB(255, 2, 40, 65)),
    new TabItem(FontAwesomeIcons.trophy, "", Color.fromARGB(255, 2, 40, 65)),
    new TabItem(Icons.home, "", Color.fromARGB(255, 2, 40, 65)),
    new TabItem(Icons.people, "", Color.fromARGB(255, 2, 40, 65)),
    new TabItem(FontAwesomeIcons.question, "", Color.fromARGB(255, 2, 40, 65)),
  ],
);

int selected = 2;

CircularBottomNavigationController _navigationController =
    new CircularBottomNavigationController(selected);

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        body: selected == 2 ? Home() : Container(),
        bottomNavigationBar: navigationBar(),
      ),
    );
  }

  Widget navigationBar() {
    return CircularBottomNavigation(
      tabItems,
      barHeight: 50.0,
      barBackgroundColor: Color.fromARGB(255, 2, 40, 65),
      normalIconColor: Colors.white,
      circleSize: 60.0,
      iconsSize: 30,
      // circleStrokeWidth: 5.0,
      animationDuration: Duration(
        milliseconds: 500,
      ),
      controller: _navigationController,
      selectedCallback: (int selectedPos) {
        setState(() {
          selected = selectedPos;
        });
        print("clicked on $selectedPos");
      },
    );
  }
}
