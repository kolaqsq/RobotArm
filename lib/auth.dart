import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class AuthScreen extends StatefulWidget {
  @override
  AuthScreenState createState() {
    return AuthScreenState();
  }
}

class AuthScreenState extends State<AuthScreen> {
  static List<int> password = [1, 2, 3, 4, 5, 6];
  List<int> userInput = [];
  int currentDigit = 0;
  String correct = '';

  void _input(value) {
    setState(() {
      currentDigit++;
      userInput.add(value);
      if (currentDigit == 6) {
        setState(() {
          _checkPassword(userInput);
        });
      }
    });
  }

  void _delete() {
    setState(() {
      currentDigit--;
      userInput.removeLast();
    });
  }

  Function eq = const ListEquality().equals;

  void _checkPassword(array) {
    setState(() {
      if (eq(userInput, password)) {
        correct = 'Верный пароль';
        Future.delayed(const Duration(milliseconds: 500), () {
          userInput = [];
          currentDigit = 0;
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => BottomTabBar()));
        });
      } else {
        setState(() {
          correct = 'Неправильный пароль';
          userInput = [];
          currentDigit = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: null,
      body: new Padding(
        padding:
            EdgeInsets.only(top: 100.0, right: 20.0, bottom: 20.0, left: 20.0),
        child: new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: new Text(
                'Введите пароль',
                style: new TextStyle(color: TextColor, fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 1
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 2
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 3
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 4
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 5
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: new Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: currentDigit >= 6
                          ? new BoxDecoration(
                              shape: BoxShape.circle,
                              color: TextColor,
                              border: Border.all(width: 2.0, color: TextColor))
                          : new BoxDecoration(
                              shape: BoxShape.circle,
                              color: PrimaryColor,
                              border: Border.all(width: 2.0, color: TextColor)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 35.0),
              child: new Text(
                correct,
                style: new TextStyle(color: TextColor, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(1);
                        },
                        child: new Text(
                          '1',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(2);
                        },
                        child: new Text(
                          '2',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(3);
                        },
                        child: new Text(
                          '3',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(4);
                        },
                        child: new Text(
                          '4',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(5);
                        },
                        child: new Text(
                          '5',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(6);
                        },
                        child: new Text(
                          '6',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(7);
                        },
                        child: new Text(
                          '7',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(8);
                        },
                        child: new Text(
                          '8',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(9);
                        },
                        child: new Text(
                          '9',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new Container(
                      width: 75.0,
                      height: 75.0,
                      color: PrimaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new ButtonTheme(
                      minWidth: 75.0,
                      height: 75.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(37.5),
                          side: BorderSide(color: TextColor, width: 2)),
                      child: new FlatButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _input(0);
                        },
                        child: new Text(
                          '0',
                          style:
                              new TextStyle(color: TextColor, fontSize: 37.5),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: new Ink(
                      width: 75.0,
                      height: 75.0,
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: PrimaryColor,
                          border: Border.all(width: 2.0, color: TextColor)),
                      child: new IconButton(
                        splashColor: AccentColor,
                        onPressed: () {
                          _delete();
                        },
                        icon: Icon(
                          Icons.chevron_left,
                          size: 37.5,
                          color: TextColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
