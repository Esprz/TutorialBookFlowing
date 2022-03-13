import 'package:experimental_project/pages/homepage.dart';
import 'package:experimental_project/pages/messages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'user_profile.dart';




class AppBarPage extends StatefulWidget {
  const AppBarPage({ Key? key }) : super(key: key);

  @override
  State<AppBarPage> createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {

  int _currentIndex = 0;
  Widget _currBody = HomePage();

  _onTap(int index) {
    switch (index) {
      case 0:
        _currBody = HomePage();
        break;
      case 1:
        _currBody = MessagePage();
        break;
      case 2:
        _currBody = UserProfilePage();
        break;
    }
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currBody,
      bottomNavigationBar: BottomNavigationBar(        
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.comment),label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_identity),label: "我的")
        ],
        onTap: _onTap,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.blue[800],
        currentIndex: _currentIndex,

      ),
      
    );
  }
}