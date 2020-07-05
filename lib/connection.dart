import 'package:flutter/material.dart';

import 'auth.dart';
import 'main.dart';

class Connection extends StatefulWidget {
  @override
  ConnectionState createState() {
    return ConnectionState();
  }
}

class ConnectionState extends State<Connection> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Подключение'),
        backgroundColor: PrimaryColor,
      ),
      body: new ListView(
        children: <Widget>[
          new ConnectionItem('Bluetooth Speaker', false),
          new ConnectionItem('Headphones MT-301', false),
          new ConnectionItem('Robot Leg', false),
          new ConnectionItem('Robot Arm', true),
          new ConnectionItem('Wireless controller', false)
        ],
      ),
      backgroundColor: PrimaryColor,
    );
  }
}

class ConnectionItem extends StatelessWidget {
  final String name;
  final bool correct;

  ConnectionItem(this.name, this.correct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      color: PrimaryColor,
      elevation: 0.0,
      child: new InkWell(
        splashColor: AccentColor,
        onTap: () {
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: Text('Идет подключение к $name'),
          ));
          Future.delayed(const Duration(microseconds: 500), () {
            if (correct)
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AuthScreen()));
            else
              Scaffold.of(context).showSnackBar(new SnackBar(
                  content: Text('Ошибка. Устройство не поддерживается')));
          });
        },
        child: Row(
          children: <Widget>[
            new Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0),
              child: new Text(
                '$name',
                style: TextStyle(color: TextColor, fontSize: 20),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
