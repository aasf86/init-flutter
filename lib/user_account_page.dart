import 'package:flutter/material.dart';

class UserAccountPage{
  UserAccountsDrawerHeader create(){
    return new UserAccountsDrawerHeader(
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
    );
  }
}
