import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dactyls.dart';
import 'gestures.dart';
import 'main.dart';

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
    return new WillPopScope(
      onWillPop: () => SystemNavigator.pop(),
      child: Scaffold(
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
      ),
    );
  }
}
