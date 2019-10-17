import 'package:flutter/material.dart';
import 'package:flutter_statusbar_manager/flutter_statusbar_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz/UI/Friends%20Page/Friends%20Page.dart';
import 'package:quiz/UI/Home/Home.dart';
import 'package:quiz/UI/Questions%20Page/Questions%20Page.dart';
import 'package:quiz/UI/Shoping%20Page/Shoping%20Page.dart';
import 'package:quiz/UI/Trophy%20Page/Trophy%20Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ShopingPage(),
    TrophyPage(),
    Home(),
    FriendsPage(),
    QuestionsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  hideStatusBar() async {
    await FlutterStatusbarManager.setHidden(true,
        animation: StatusBarAnimation.NONE);
  }

  @override
  void initState() {
    super.initState();
    hideStatusBar();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: navigationBar(),
      ),
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
