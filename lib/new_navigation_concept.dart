import 'package:flutter/material.dart';
import 'gestures.dart';

class RoAr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: <Widget>[GesturesMain(), LettersMain()],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.pan_tool,
                ),
                title: Text(''),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.text_fields,
                ),
                title: Text('')
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LettersMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Буквы'),
      ),
    );
  }
}

const PrimaryColor = Color(0xFF2F303B);
const SecondaryColor = Color(0xFFC4C4C4);
const TextColor = Color(0xFFFFFFFF);
const AccentColor = Color(0xFF7E7E7E);

void main() => runApp(RoAr());
