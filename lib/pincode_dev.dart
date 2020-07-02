import 'package:flutter/material.dart';
import 'main.dart';

class AuthScreen extends StatefulWidget {
  @override
  AuthScreenState createState() {
    return AuthScreenState();
  }
}

class AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: null,
      body: new Padding(
        padding:
            EdgeInsets.only(top: 50.0, right: 20.0, bottom: 20.0, left: 20.0),
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
                      decoration: new BoxDecoration(
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
                      decoration: new BoxDecoration(
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
                      decoration: new BoxDecoration(
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
                      decoration: new BoxDecoration(
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
                      decoration: new BoxDecoration(
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
                      decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          color: PrimaryColor,
                          border: Border.all(width: 2.0, color: TextColor)),
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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
                          print('gunga');
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

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new AuthScreen(),
      theme: new ThemeData(
        accentColor: TextColor,
        backgroundColor: PrimaryColor,
        appBarTheme: new AppBarTheme(color: PrimaryColor),
        scaffoldBackgroundColor: PrimaryColor,
        applyElevationOverlayColor: false,
        tabBarTheme: new TabBarTheme(
          labelColor: TextColor,
          unselectedLabelColor: AccentColor,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
    ));
