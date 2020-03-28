import 'package:flutter/material.dart';
import 'gestures.dart';

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
    new LettersMain(),
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

class GesturesMain extends StatelessWidget {
  GesturesMain();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: new Text('Жесты'),
          leading: IconButton(
            icon: Icon(
              Icons.settings,
              color: TextColor,
            ),
            onPressed: null,
          ),
        ),
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: (1.0 / 1.75),
          crossAxisCount: 2,
          children: <Widget>[
            new Card(
              color: SecondaryColor,
              elevation: 0.0,
              child: new InkWell(
                splashColor: AccentColor,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    new Expanded(
                        child: Center(
                            child: new Text(
                      'Общие',
                      style: TextStyle(color: PrimaryColor, fontSize: 25),
                    ))),
                  ],
                ),
              ),
            ),
            new Card(
              color: SecondaryColor,
              elevation: 0.0,
              child: new InkWell(
                splashColor: AccentColor,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    new Expanded(
                        child: Center(
                            child: new Text(
                      'Одноручные',
                      style: TextStyle(color: PrimaryColor, fontSize: 25),
                    ))),
                  ],
                ),
              ),
            ),
            new Card(
              color: SecondaryColor,
              elevation: 0.0,
              child: new InkWell(
                splashColor: AccentColor,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    new Expanded(
                        child: Center(
                            child: new Text(
                      'Двуручные',
                      style: TextStyle(color: PrimaryColor, fontSize: 25),
                    ))),
                  ],
                ),
              ),
            ),
            new Card(
              color: SecondaryColor,
              elevation: 0.0,
              child: new InkWell(
                splashColor: AccentColor,
                onTap: () {},
                child: Row(
                  children: <Widget>[
                    new Expanded(
                        child: Center(
                            child: new Text(
                      'Избранное',
                      style: TextStyle(color: PrimaryColor, fontSize: 25),
                    ))),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class LettersMain extends StatelessWidget {
  LettersMain();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Буквы'),
        backgroundColor: PrimaryColor,
      ),
      backgroundColor: PrimaryColor,
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
