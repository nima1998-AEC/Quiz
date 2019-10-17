import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrophyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TrophyPage();
}

class _TrophyPage extends State<TrophyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Icon(
        FontAwesomeIcons.trophy,
        color: Colors.white,
      ),
    );
  }
}
