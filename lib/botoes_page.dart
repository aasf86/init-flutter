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
                ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildFlatButton('Botões de exemplo abaixo.'),
                ),
                ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildOutlineButton('Botões de exemplo abaixo.'),
                ),
                ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildIconButton('Botões de exemplo abaixo.'),
                ),
                ButtonTheme.fromButtonThemeData(
                  data: buttonTheme,
                  child: buildActionButton('Botões de exemplo abaixo.'),
                ),
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

  Widget buildFlatButton(title){
    return Align(
      alignment: Alignment(0.0, 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlatButton(
                child: Text('Flat'),
              ),
              FlatButton(
                child: Text('Flat'),
                onPressed: (){},
              ),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.thumb_up, size: 18.0,),
                label: Text('Flat'),
                onPressed: (){
                },
              ),
              FlatButton.icon(
                icon: Icon(Icons.thumb_down, size: 18.0,),
                label: Text('Flat'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildOutlineButton(title){
    return Align(
      alignment: Alignment(0.0, 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              OutlineButton(
                child: Text('Outline'),
              ),
              OutlineButton(
                child: Text('Outline'),
                onPressed: (){},
              ),
            ],
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              OutlineButton.icon(
                icon: Icon(Icons.thumb_up, size: 18.0,),
                label: Text('Outline'),
                onPressed: (){
                },
              ),
              OutlineButton.icon(
                icon: Icon(Icons.thumb_down, size: 18.0,),
                label: Text('Outline'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIconButton(title){
    return Align(
      alignment: Alignment(0.0, 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.thumb_down),
              ),
              IconButton(
                icon: Icon(Icons.timelapse),
                onPressed: (){

                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildActionButton(title){
    return Align(
      alignment: Alignment(0.0, 0.2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title, textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
          ButtonBar(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FloatingActionButton (
                child: Text('Go'),
              ),
              FloatingActionButton(
                child: Text('Stop'),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}