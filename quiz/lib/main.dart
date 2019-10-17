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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Home(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // extendBody: true,
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: navigationBar(),
      ),
    );
  }

  Widget navigationBar1() {
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

  Widget navigationBar() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.shoppingCart),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.trophy),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.home),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.users),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.question),
          title: Text(''),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 2, 40, 64),
      fixedColor: Colors.blue,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.white10),
    );
  }
}
