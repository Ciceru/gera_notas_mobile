import 'package:flutter/material.dart';
import 'package:gera_notas/pages/home/home_page.dart';

class HistPedidos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // actions: <Widget>[
        //   IconButton(
        //       icon: Icon(Icons.arrow_back),
        //       onPressed: () {
        //         Navigator.push(context,
        //             MaterialPageRoute(builder: (BuildContext) => HomePage()));
        //       }),
        // ],
        title: Text('Histórico de pedidos'),
      ),
    );
  }
}
