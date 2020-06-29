import 'package:flutter/material.dart';

import 'gestures.dart';
import 'letters.dart';
import 'main.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
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
        children: <Widget>[
          new GesturesMain(),
          new LettersMain(),
        ],
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        child: TabBar(
          tabs: <Tab>[
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
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
