import 'package:flutter/material.dart';

import 'connection.dart';
import 'main.dart';

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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Connection()));
              }),
        ),
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            new GesturesMainCard('Общие', 'Обжие жесты', 'Общий\nжест'),
            new GesturesMainCard(
                'Одноручные', 'Одноручные жесты', 'Одноручный\nжест'),
            new GesturesMainCard(
                'Двуручные', 'Двуручные жесты', 'Двуручный\nжест'),
            new GesturesMainCard(
                'Избранные', 'Избранные жесты', 'Избранный\nжест'),
            new GesturesMainCardSearch(),
          ],
        ));
  }
}

class GesturesMainCard extends StatelessWidget {
  final String _cardName;
  final String _categoryName;
  final String _categoryCardName;

  GesturesMainCard(this._cardName, this._categoryName, this._categoryCardName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: SecondaryColor,
      elevation: 0.0,
      child: new InkWell(
        splashColor: AccentColor,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      GesturesCategory(_categoryName, _categoryCardName)));
        },
        child: Row(
          children: <Widget>[
            new Expanded(
                child: Center(
                    child: new Text(
              _cardName,
              style: TextStyle(color: PrimaryColor, fontSize: 25),
            ))),
          ],
        ),
      ),
    );
  }
}

class GesturesMainCardSearch extends StatelessWidget {
  GesturesMainCardSearch();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: SecondaryColor,
      elevation: 0.0,
      child: new InkWell(
        splashColor: AccentColor,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GesturesCategorySearch()));
        },
        child: Row(
          children: <Widget>[
            new Expanded(
                child: Center(
                    child: new Text(
              'Все',
              style: TextStyle(color: PrimaryColor, fontSize: 25),
            ))),
          ],
        ),
      ),
    );
  }
}

class GesturesCategory extends StatelessWidget {
  final String _title;
  final String _cardName;

  GesturesCategory(this._title, this._cardName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: new Text('$_title'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: TextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return new GesturesCategoryCard(_cardName, index);
        }),
      ),
    );
  }
}

class GesturesCategorySearch extends StatefulWidget {
  @override
  GesturesCategorySearchState createState() {
    return GesturesCategorySearchState();
  }
}

class GesturesCategorySearchState extends State<GesturesCategorySearch> {
  static List<String> allCardNames = List.generate(400, (index) {
    if (index < 100) {
      return 'Общий\nжест $index';
    } else if (index < 200) {
      return 'Одноручный\nжест ${index - 100}';
    } else if (index < 300) {
      return 'Двуручный\nжест ${index - 200}';
    } else if (index < 400) {
      return 'Избранный\nжест ${index - 300}';
    } else
      return null;
  });
  List<String> currentCardNames = allCardNames;
  bool isSearching = false;

  void _updateCards(value) {
    setState(() {
      currentCardNames = allCardNames
          .where((names) => names.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        title: !isSearching
            ? new Text('Все')
            : new TextField(
                style: TextStyle(color: TextColor, fontSize: 20),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Поиск жестов',
                  hintStyle: TextStyle(color: AccentColor, fontSize: 20),
                ),
//                controller: controller,
                onChanged: (value) {
                  _updateCards(value);
                },
              ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: TextColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: Icon(
                    Icons.clear,
                    color: TextColor,
                  ),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !this.isSearching;
                      currentCardNames = allCardNames;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(
                    Icons.search,
                    color: TextColor,
                  ),
                  onPressed: () {
                    setState(() {
                      this.isSearching = !this.isSearching;
                    });
                  },
                )
        ],
      ),
      body: new GridView.builder(
        itemCount: currentCardNames.length,
        itemBuilder: (BuildContext context, int index) {
          return new GesturesCategoryCardNonIndex(currentCardNames[index]);
        },
        primary: false,
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

class GesturesCategoryCard extends StatelessWidget {
  final String _cardName;
  final int _index;

  GesturesCategoryCard(this._cardName, this._index);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: SecondaryColor,
      elevation: 0.0,
      child: new InkWell(
        splashColor: AccentColor,
        onTap: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text('Демонстрирутся $_cardName $_index'),
          ));
        },
        child: Row(
          children: <Widget>[
            new Expanded(
                child: Center(
                    child: new Text(
              '$_cardName $_index',
              style: TextStyle(color: PrimaryColor, fontSize: 20),
            ))),
          ],
        ),
      ),
    );
  }
}

class GesturesCategoryCardNonIndex extends StatelessWidget {
  final String _cardName;

  GesturesCategoryCardNonIndex(this._cardName);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: SecondaryColor,
      elevation: 0.0,
      child: new InkWell(
        splashColor: AccentColor,
        onTap: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text('Демонстрируется $_cardName'),
          ));
        },
        child: Row(
          children: <Widget>[
            new Expanded(
                child: Center(
                    child: new Text(
              '$_cardName',
              style: TextStyle(color: PrimaryColor, fontSize: 20),
            ))),
          ],
        ),
      ),
    );
  }
}
