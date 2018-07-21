import 'package:flutter/material.dart';

enum MaterialListType{
  UmaLinha,
  UmaLinhaAvatar,
  DuasLinhas,
  TresLinhas
}

List<String> alphabeto = <String>[
  'A','B','C','D','E','F','G','H','I','J','K','L','M','N','M','O','P','Q','R','S','T','U','V','X'
];

List<String> alphabetoColors = <String>[
  '128,0,0', '139,0,0', '165,42,42', '178,34,34', '220,20,60', '255,0,0', '255,99,71', '255,127,80',
  '0,255,255', '224,255,255', '0,206,209', '64,224,208', '72,209,204', '175,238,238', '127,255,212', '176,224,230',
  '255,255,224', '139,69,19', '160,82,45', '210,105,30', '205,133,63', '244,164,96', '222,184,135', '210,180,140',
  '255,222,173'
];

class ListaPage extends StatefulWidget{
  @override
  _ListaPageState createState()=> _ListaPageState();
}

class _ListaPageState extends State<ListaPage>{

  static final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  PersistentBottomSheetController<Null> _bottomSheet;
  MaterialListType _itemType = MaterialListType.TresLinhas;

  bool _showAvatar = true;
  bool _showIcon = false;

  bool _ordenacaoReversa = false;

  void changeItemType(MaterialListType type){
    setState(() {
      _itemType = type;
    });
    _bottomSheet.setState((){});
  }

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
              onPressed: (){
                setState(() {
                    _ordenacaoReversa = !_ordenacaoReversa;
                    alphabeto.sort((String a, String b)=>_ordenacaoReversa ? b.compareTo(a):a.compareTo(b));
                    alphabetoColors.sort((String a, String b)=>_ordenacaoReversa ? b.compareTo(a):a.compareTo(b));
                });
              }
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

    var index = alphabeto.indexOf(item);
    var itemText = alphabetoColors[index];
    var alCores = itemText.split(",");
    
    return MergeSemantics(
      child: ListTileTheme(
        child: ListTile(
          title: Text('Este é o item $item'),
          leading: ExcludeSemantics(child: CircleAvatar(child: Text(item,), backgroundColor: Color.fromRGBO(int.parse(alCores[0]), int.parse(alCores[1]), int.parse(alCores[2]), 1.0) ,),),
          subtitle: Text('SubTitulo de $item -***'),
        ),
        style: ListTileStyle.list,
      ),
    );
  }
}