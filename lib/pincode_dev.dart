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
            new GridView.count(
              crossAxisCount: 3,
              children: <Widget>[],
            )
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
