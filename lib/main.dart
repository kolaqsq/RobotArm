import 'package:flutter/material.dart';

import 'navigation.dart';
import 'themes.dart';

class RoAr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new NavigationScreen(),
      theme: ThemeData.light(),
      darkTheme: themeDarkMain,
    );
  }
}

const PrimaryColor = Color(0xFF2F303B);
const AccentColor = Color(0xFFC4C4C4);
const TextColor = Color(0xFFFFFFFF);
const SecondaryColor = Color(0xFF7E7E7E);

void main() => runApp(RoAr());
