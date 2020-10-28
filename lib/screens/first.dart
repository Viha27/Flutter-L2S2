import 'package:flutter/material.dart';
import 'package:udemy2_intermidiate/screens/second.dart';
import '../code/GlobalState.dart';

class First extends StatefulWidget {
  @override
  _SecondState createState() => new _SecondState();
}

class _SecondState extends State<First> {

  TextEditingController _name;
  GlobalState _store = GlobalState.instance;

   @override
  void initState(){
    _name = new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }
  
  void _onpressed(){
    setState(() {
      _store.set('name', _name.text);
    });
    Navigator.of(context).pushNamed('/Second');
  }
 



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.brown.shade900,
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text('Second Page'),
                new RaisedButton(onPressed: _onpressed, child: new Text('Next'),),
                // new RaisedButton(onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/Second',(Route<dynamic> route)=>false);}, child: new Text('Next'),),

                new RaisedButton(onPressed: (){Navigator.of(context).pop();}, child: new Text('Back'),),

                new TextField(
                  controller: _name,
                  decoration: new InputDecoration(
                    labelText: 'Enter your name : '
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
