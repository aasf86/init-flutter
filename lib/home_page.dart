import 'package:flutter/material.dart';
import 'drawer_page.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget App"),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: DrawerPage().Create(context),
      body: Center(
        child: Text('Olá mundo'),
      ),
    );
  }
}