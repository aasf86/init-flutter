import 'package:flutter/material.dart';
import './botoes_page.dart';
import './lista_page.dart';
import './cards_page.dart';
import './user_account_page.dart';

class DrawerPage{
  Drawer Create(BuildContext context){
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountPage().create(),
          ListTile(
            title: Text('Botões'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new BotoesPage()));
            },
          ),
          ListTile(
            title: Text('Listas'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new ListaPage()));
            },
          ),
          ListTile(
            title: Text('Cards'),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new CardsPage()));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Cancelar'),
            trailing: Icon(Icons.close),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}