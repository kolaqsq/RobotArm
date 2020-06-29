import 'package:flutter/material.dart';
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
              onPressed: null),
        ),
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: (1.0 / 1.75),
          crossAxisCount: 2,
          children: <Widget>[
            new GesturesMainCard('Общие', 'Обжие жесты', 'Общий\nжест'),
            new GesturesMainCard(
                'Одноручные', 'Одноручные жесты', 'Одноручный\nжест'),
            new GesturesMainCard(
                'Двуручные', 'Двуручные жесты', 'Двуручный\nжест'),
            new GesturesMainCard(
                'Избранные', 'Избранные жесты', 'Избранный\nжест'),
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
            content: Text('Показывается жест $_index'),
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
