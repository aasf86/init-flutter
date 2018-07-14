import 'package:flutter/material.dart';

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Anderson Fernandes'),
                accountEmail: Text('aasf86@gmail.com'),
                currentAccountPicture: GestureDetector(
                    onTap: () => print('tapiado'),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/16480493?s=460&v=4'),
                    ),
                ),
            ),
            ListTile(
              title: Text('Botões'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Listas'),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            ListTile(
              title: Text('Cards'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Olá mundo'),
      ),
    );
  }
}