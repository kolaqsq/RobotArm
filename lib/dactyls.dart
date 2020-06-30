import 'package:flutter/material.dart';

import 'main.dart';

class DactylsMain extends StatefulWidget {
  @override
  DactylsMainState createState() {
    return DactylsMainState();
  }
}

class DactylsMainState extends State<DactylsMain> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Дактилемы'),
        backgroundColor: PrimaryColor,
      ),
      body: new Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  style: TextStyle(color: TextColor, fontSize: 25),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Введите буквы или текст',
                    hintStyle: TextStyle(color: AccentColor, fontSize: 25),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Введите буквы или текст';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, otherwise false
                    if (_formKey.currentState.validate()) {
                      // If the form is valid, display a SnackBar
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Демонстрируется дактилема')));
                    }
                  },
                  child: Text(
                    'Демонстрация',
                    style: TextStyle(color: PrimaryColor, fontSize: 20),
                  ),
                )
              ],
            ),
          )),
      backgroundColor: PrimaryColor,
    );
  }
}
