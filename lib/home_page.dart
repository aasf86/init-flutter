import 'package:flutter/material.dart';
import './botoes_page.dart';

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
                accountName: Text('Anderson Fernandes', style: TextStyle(color: Colors.black,),),
                accountEmail: Text('aasf86@gmail.com', style: TextStyle(color: Colors.black,),),
                currentAccountPicture: GestureDetector(
                    onTap: () => print('tapiado'),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars0.githubusercontent.com/u/16480493?s=460&v=4'),
                    ),
                ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://davidfico.files.wordpress.com/2016/12/badeira-de-israel.jpg?w=794'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            ListTile(
              title: Text('Botões'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new BotoesPage()));
              },
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