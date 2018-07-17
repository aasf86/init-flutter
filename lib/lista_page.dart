import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget{
  @override
  _ListaPageState createState()=> _ListaPageState();
}

class _ListaPageState extends State<ListaPage>{

  List<String> alphabeto = <String>[
    'A','B','C','D','E','F','G','H','I','J','K','L','M','N','M','O','P','Q','R','S','T','U','V','X','Y','Z'
  ];

  List<String> colors = <String>[
    '#ff0000', '#ff4000', '#ff8000', '#ffbf00', '#ffff00', '#bfff00', '#80ff00', '#40ff00',
    '#00ff00', '#00ff40', '#00ff80', '#00ffbf', '#00ffff', '#00bfff', '#0080ff', '#0040ff',
    '#0000ff', '#4000ff', '#8000ff', '#bf00ff', '#ff00ff', '#ff00bf', '#ff0080', '#ff0040',
    '#ff0000'
  ];

  @override
  Widget build (BuildContext context){

    Iterable<Widget> itens = alphabeto.map((String item) => buildTile(item));

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista page'),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.sort_by_alpha),
              onPressed: (){ }
          ),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){ }
          ),
        ],        
      ),
      body: Scrollbar(
          child: ListView(
            children: itens.toList(),
      )),
    );
  }

  Widget buildTile(String item){
    return MergeSemantics(
      child: ListTileTheme(
        child: ListTile(
          title: Text('Este é o item $item'),
          subtitle: Text('SubTitulo de $item -***'),
        ),
        style: ListTileStyle.list,
      ),
    );
  }
}