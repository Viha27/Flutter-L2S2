import 'package:flutter/material.dart';
import 'package:udemy2_intermidiate/mywidget.dart';
import '../code/GlobalState.dart';

class Second extends StatefulWidget {
  @override
  _ThirdState createState() => new _ThirdState();
}

class _ThirdState extends State<Second> {

  
  GlobalState _store = GlobalState.instance;
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
          padding: new EdgeInsets.all(32.0),
            child: new Column(
              children: <Widget>[
                new Image.asset('images/uonitfac.jpg'),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Card(
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Column(
                          children: [
                            new Icon(Icons.people),
                            new Text('Attendance'),
                            
                          ],
                        ),
                      )
                    ),
                    new Card(
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Column(
                          children: [
                            new Icon(Icons.people),
                            new Text('Attendance'),
                            
                          ],
                        ),
                      )
                    )
                  ],
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Card(
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Column(
                          children: [
                            new Icon(Icons.people),
                            new Text('Attendance'),
                            
                          ],
                        ),
                      )
                    ),
                    new Card(
                      child: new Container(
                        padding: EdgeInsets.all(15.0),
                        child: new Column(
                          children: [
                            new Icon(Icons.people),
                            new Text('Attendance'),
                            
                          ],
                        ),
                      )
                    )
                  ],
                )

                /* new Text('Third Page'),
                new RaisedButton(onPressed: (){
                  if(Navigator.of(context).canPop()){
                    Navigator.of(context).pop();
                  }
                  else{
                    Navigator.of(context).pushNamed('/Home');
                  }
                  }, child: new Text('Back'),),
                  MyWidget(),

                  new Text('Hello ${_store.get('name')}') */
              ],
            ),
          
      ),
    );
  }
}