import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persian_numbers/persian_numbers.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Home();
}

var pageHeight;

class _Home extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Positioned(
            top: MediaQuery.of(context).size.height * 0.15,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.26,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 19, 37),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.95 * 0.05,
                          right:
                              MediaQuery.of(context).size.width * 0.95 * 0.05,
                          top: MediaQuery.of(context).size.width * 0.25 * 0.25,
                        ),
                        child: Container(
                          width:
                              MediaQuery.of(context).size.width * 0.95 * 0.20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 14, 27),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "امتیاز\n${PersianNumbers.toPersian("1981")}",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.95 * 0.05,
                          right:
                              MediaQuery.of(context).size.width * 0.95 * 0.05,
                          bottom:
                              MediaQuery.of(context).size.width * 0.25 * 0.25,
                        ),
                        child: Container(
                          width:
                              MediaQuery.of(context).size.width * 0.95 * 0.20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 14, 27),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "لیگ هفتگی\n${PersianNumbers.toPersian("67953")}",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.width * 0.17,
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.20,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: GestureDetector(
                                child: Text(
                                  "ثبت نام کن",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04,
                                  ),
                                ),
                                onTap: () {
                                  debugPrint("ثبت نام کن");
                                },
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 2, 40, 64),
                                borderRadius: BorderRadius.circular(32.0)),
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "عضو گروه نیستی",
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.rtl,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.users,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            print("عضو گروه نیستی");
                          },
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.95 * 0.05,
                          right:
                              MediaQuery.of(context).size.width * 0.95 * 0.05,
                          top: MediaQuery.of(context).size.width * 0.25 * 0.25,
                        ),
                        child: Container(
                          width:
                              MediaQuery.of(context).size.width * 0.95 * 0.20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 14, 27),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.solidEnvelope,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint("Messages");
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.95 * 0.05,
                          right:
                              MediaQuery.of(context).size.width * 0.95 * 0.05,
                          bottom:
                              MediaQuery.of(context).size.width * 0.25 * 0.25,
                        ),
                        child: Container(
                          width:
                              MediaQuery.of(context).size.width * 0.95 * 0.20,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 14, 27),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.0),
                            child: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.cog,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                debugPrint("Settings");
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          new Positioned(
            top: MediaQuery.of(context).size.height * 0.08,
            child: new Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 5, 76, 59),
                shape: BoxShape.circle,
              ),
              child: new Padding(
                padding: EdgeInsets.all(18.0),
                child: new Image.asset("assets/avatar.png"),
              ),
            ),
          ),
          new Positioned(
            top: MediaQuery.of(context).size.height * 0.43,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new GestureDetector(
                  child: new Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 14, 27),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "بازی کیو",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    debugPrint("بازی کیو");
                  },
                ),
                new GestureDetector(
                  child: new Container(
                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 14, 27),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "بازی گروهی",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    debugPrint("بازی گروهی");
                  },
                ),
                new GestureDetector(
                  child: new Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 4, 14, 27),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      "بازی تک نفره",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onTap: () {
                    debugPrint("بازی تک نفره");
                  },
                ),
              ],
            ),
          ),
          new Positioned(
            top: MediaQuery.of(context).size.height * 0.52,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new GestureDetector(
                  child: new Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.30,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 2,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    child: new Text(
                      "بازی های در حال اجرا",
                      textDirection: TextDirection.rtl,
                      textScaleFactor: 1.0,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.03,
                      ),
                    ),
                  ),
                  onTap: () {
                    debugPrint("بازی کیو");
                  },
                ),
              ],
            ),
          ),
          new Positioned(
            top: MediaQuery.of(context).size.height * 0.60,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return new Stack(
                    alignment: FractionalOffset.center,
                    children: <Widget>[
                      new Positioned(
                        child: new Container(
                          alignment: Alignment.center,
                          height:
                              MediaQuery.of(context).size.height * 0.30 * 0.30,
                          width: MediaQuery.of(context).size.width * 0.85,
                          margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
                          padding: EdgeInsets.only(
                              right: MediaQuery.of(context).size.width *
                                  0.85 *
                                  0.05),
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 0, 18, 34),
                            borderRadius: new BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            "حریف" +
                                " ${PersianNumbers.toPersian("0")}" +
                                " - " +
                                "${PersianNumbers.toPersian("1")} " +
                                "شما",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            textScaleFactor: 1.0,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.06,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      new Positioned(
                        left: MediaQuery.of(context).size.width * 0.95 * 0.01,
                        child: new Container(
                          height:
                              MediaQuery.of(context).size.height * 0.95 * 0.1,
                          width:
                              MediaQuery.of(context).size.height * 0.95 * 0.1,
                          alignment: FractionalOffset.centerLeft,
                          margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 18, 34),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Image.asset(
                              "assets/avatar.png",
                            ),
                          ),
                        ),
                      ),
                      new Positioned(
                        right: MediaQuery.of(context).size.width * 0.01,
                        child: new Container(
                          height:
                              MediaQuery.of(context).size.height * 0.30 * 0.30,
                          width: MediaQuery.of(context).size.height * 0.12,
                          margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
                          alignment: FractionalOffset.center,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 4, 14, 27),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(
                            "بازی تک نفره",
                            textAlign: TextAlign.center,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
  /*
  SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.95,
            child: new Positioned(
              top: MediaQuery.of(context).size.height * 0.80,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Text(
                    "Game $index",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  );
                },
              ),
            ),
          ),

  */

  Widget gameList(BuildContext context, int index) {
    return Stack(
      alignment: FractionalOffset.center,
      children: <Widget>[
        new Positioned(
          top: MediaQuery.of(context).size.height * 0.63 + index * 60,
          child: new Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.circular(8.0),
            ),
          ),
        ),
        new Positioned(
          top: MediaQuery.of(context).size.height * 0.63,
          left: MediaQuery.of(context).size.width * 0.04,
          child: new Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.height * 0.08,
            alignment: FractionalOffset.centerLeft,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 18, 34),
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(16.0),
            ),
            // child: new Image(
            //   image: new AssetImage("assets/avatar.png"),
            //   // height: MediaQuery.of(context).size.height * 0.08,
            //   // width: MediaQuery.of(context).size.width * 0.80,
            // ),
          ),
        ),
        new Positioned(
          top: MediaQuery.of(context).size.height * 0.63,
          right: MediaQuery.of(context).size.width * 0.10,
          child: new Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.height * 0.12,
            alignment: FractionalOffset.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 18, 34),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Text(
              "بازی تک نفره",
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
