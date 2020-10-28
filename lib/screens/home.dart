import 'package:flutter/material.dart';
import '../code/GlobalState.dart';


class Home extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Home> {

  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();

 
  String _value = '';

  void _onChange(String value) {
    setState(() => _value = 'Change: ${value}');
  }

  void _onSubmit(String value) {
    setState(() => _value = 'Submit: ${value}');
  }

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      
      body: Center(
        child: new Container(
          padding: new EdgeInsets.all(56.0),
          child: new Column(
            children: <Widget>[
             
              new Image.asset('images/uom.png',width: 110,height: 150,),
              new Text('Faculty of Information',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 28.0,color: Colors.brown.shade900),),
              new Text('Technology',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 28.0,color: Colors.brown.shade900),),
              new Padding(padding: EdgeInsets.all(20.0)),

              new Text('Please Login',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 16.0),),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                children: <Widget>[
                  new Text('Username: ',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 16.0),),
                  new Expanded(child: new TextField(controller: _user,))
                ],
              ),
              
              new Row(
                children: <Widget>[
                  new Text('Password: ',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 16.0),),
                  new Expanded(child: new TextField(controller: _pass,obscureText: true,))
                ],
              ),

              new Padding(
                padding: new EdgeInsets.all(32.0),
                //child: new RaisedButton(onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/First',(Route<dynamic> route)=>false);}, child: new Text('Log in',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 16.0),),color: Colors.yellow.shade600),
               child: new RaisedButton(onPressed: (){Navigator.of(context).pushNamed('/First');}, child: new Text('Log in',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.black54,fontSize: 16.0),),color: Colors.yellow.shade600),
              
              ),

                 new Container(
                  padding: EdgeInsets.all(10.0),
                  child: new Row(
                   children: [
                      Text('Does not have account?',style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.brown,fontSize: 16.0),),
                        FlatButton(
                          textColor: Colors.blue,
                          child: Text(
                            'Sign in',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                   ],
                  ),

                  ),
              
              
            
            ],
            
          ),
        ),
      ),
    );
  }
}