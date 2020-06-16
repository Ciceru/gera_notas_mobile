import 'package:flutter/material.dart';
import 'package:gera_notas/pages/home/widgets/bottom_menu.dart';
import 'package:gera_notas/pages/home/widgets/item_menu_bottom.dart';
import 'package:gera_notas/pages/home/widgets/menu_app.dart';
import 'package:gera_notas/pages/home/widgets/my_app_bar.dart';
import 'package:gera_notas/pages/home/widgets/my_dots_app.dart';
import 'package:gera_notas/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;
  double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
              });
            },
          ),
          MenuApp(
            top: _screenHeight * 0.22,
            showMenu: _showMenu,
          ),
          BottomMenu(
            showMenu: _showMenu,
          ),
          PageViewApp(
            showMenu: _showMenu,
            top: !_showMenu ? _screenHeight * 0.24 : _screenHeight * 0.80,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeight * 0.80,
            currentIndex: _currentIndex,
          ),
        ],
      ),
    );
  }
}
