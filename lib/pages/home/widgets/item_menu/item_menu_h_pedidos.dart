import 'package:flutter/material.dart';
import 'package:gera_notas/pages/menus/hist_pedidos.dart';

class ItemMenuHPedidos extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenuHPedidos({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.white54),
          top: BorderSide(width: 0.5, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.blue[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.blue[900],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 15,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
            )
          ],
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext) => HistPedidos()));
        },
      ),
    );
  }
}
