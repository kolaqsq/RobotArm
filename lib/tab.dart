import 'package:flutter/material.dart';

import 'dactyls.dart';
import 'gestures.dart';
import 'main.dart';

Future<bool> disconnect(BuildContext context) {
  return showDialog(
        context: context,
        child: new AlertDialog(
          backgroundColor: PrimaryColor,
          title: new Text(
            'Отключиться от устройства?',
            style: new TextStyle(
              color: TextColor,
            ),
          ),
          content: new Text(
            'Рвзорвав связь с устройством, Вы не сможете использовать его функкции',
            style: new TextStyle(
              color: TextColor,
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: new Text(
                'Нет',
                style: new TextStyle(color: TextColor),
              ),
            ),
            new FlatButton(
              onPressed: () => Navigator.popUntil(
                  context, ModalRoute.withName(Navigator.defaultRouteName)),
              child: new Text(
                'Да',
                style: new TextStyle(color: TextColor),
              ),
            ),
          ],
        ),
      ) ??
      false;
}

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BottomTabBarState();
}

class BottomTabBarState extends State<BottomTabBar>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  static final tabPages = <Widget>[
    new GesturesMain(),
    new DactylsMain(),
  ];
  static const tabs = <Tab>[
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
    tabController = TabController(
      length: tabPages.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () => disconnect(context),
      child: Scaffold(
        appBar: null,
        body: TabBarView(
          children: tabPages,
          controller: tabController,
        ),
        bottomNavigationBar: Material(
          color: PrimaryColor,
          child: TabBar(
            tabs: tabs,
            controller: tabController,
          ),
        ),
      ),
    );
  }
}
