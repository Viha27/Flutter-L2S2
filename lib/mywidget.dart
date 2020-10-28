import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Card(
        child: new Column(
          children: [
            new Text('Navigator Option :'),
            new RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/Home');}, child:new Text('Click me'))
          ],
        ),
      ),
    );
  }
}