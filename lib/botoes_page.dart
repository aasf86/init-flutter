import 'package:flutter/material.dart';

class BotoesPage extends StatefulWidget{
  @override
  _BotoesPageState createState()=> _BotoesPageState();
}

class _BotoesPageState extends State<BotoesPage>{
  ShapeBorder _buttonShape;
  @override
  Widget build (BuildContext context){

    final ButtonThemeData buttonTheme = ButtonTheme.of(context).copyWith(shape: _buttonShape);

    return Scaffold(
      body: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                title: Text('Botões page'),
                backgroundColor: Colors.blueAccent,
                bottom: TabBar(
                    tabs: [
                      Tab(text: 'Raised'),
                      Tab(text: 'Flat'),
                      Tab(text: 'Outline'),
                      Tab(text: 'Icon'),
                      Tab(text: 'Action')
                    ]
                ),
              ),
            body: TabBarView(
                children: [
                ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildRaisedButton('Botões de exemplo abaixo.'),
                ),
                Text('Flat'),
                Text('Outline'),
                Text('Icon'),
                Text('Action'),
            ]),
          )
      ),
    );
  }

  Widget buildRaisedButton(title){
    return Align(
      alignment: Alignment(0.0, 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                child: Text('Raised'),
              ),
              RaisedButton(
                child: Text('Raised'),
                onPressed: (){},
              ),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.add, size: 18.0,),
                label: Text('Raised'),
                onPressed: (){
                },
              ),
              RaisedButton.icon(
                icon: Icon(Icons.add, size: 18.0,),
                label: Text('Raised'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}