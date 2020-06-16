import 'package:flutter/material.dart';
import 'package:gera_notas/pages/home/widgets/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  final bool showMenu;

  const BottomMenu({Key key, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: !showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height * 0.15,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: !showMenu ? 1 : 0,
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ItemMenuBottom(icon: Icons.attach_money, text: 'Faturas'),
              // RaisedButton(onPressed: () {}),
              ItemMenuBottom(icon: Icons.settings, text: 'Ajustes'),
              ItemMenuBottom(icon: Icons.add_call, text: 'Contatos'),
              ItemMenuBottom(icon: Icons.add_call, text: 'Ajuda'),
            ],
          ),
        ),
      ),
    );
  }
}
