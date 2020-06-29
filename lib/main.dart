import 'package:flutter/material.dart';
import 'gestures.dart';
import 'dactyls.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  static final _kTabPages = <Widget>[
    new GesturesMain(),
    new DactylsMain(),
  ];
  static const _kTabs = <Tab>[
    Tab(
      icon: Icon(
        Icons.pan_tool,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.text_fields,
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _kTabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: PrimaryColor,
        child: TabBar(
          tabs: _kTabs,
          controller: _tabController,
        ),
      ),
    );
  }
}

const PrimaryColor = Color(0xFF2F303B);
const SecondaryColor = Color(0xFFC4C4C4);
const TextColor = Color(0xFFFFFFFF);
const AccentColor = Color(0xFF7E7E7E);

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new BottomTabBar(),
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
