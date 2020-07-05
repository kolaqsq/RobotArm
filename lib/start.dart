import 'package:flutter/material.dart';

import 'connection.dart';
import 'main.dart';

class StartPage extends StatelessWidget {
  StartPage();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Robot Arm'),
        backgroundColor: PrimaryColor,
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: new Text(
              'Для начала работы\nподключиетсь к устройству\nRobot Arm',
              style: new TextStyle(color: TextColor, fontSize: 22.5),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 75.0),
            child: RaisedButton(
              color: TextColor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Connection()));
              },
              child: Text(
                'Подключение',
                style: TextStyle(color: PrimaryColor, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
