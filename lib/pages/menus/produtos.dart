import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gera_notas/apiJson/api.dart';
import 'package:gera_notas/apiJson/produtos.dart';
import 'package:gera_notas/pages/home/home_page.dart';

class CProdutos extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http-Json-ListView',
      home: BuildListView(),
    );
  }
}

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  var produtos = new List<Produtos>();

  _getUsers() {
    API.getPorodutos().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        produtos = lista.map((model) => Produtos.fromJson(model)).toList();
      });
    });
  }

  _BuildListViewState() {
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: Text('Lista de Produtos'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) => HomePage()));
              }),
        ],
      ),
      body: listaProdutos(),
    );
  }

  listaProdutos() {
    return new ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          var produto = <Widget>[
            new Text("ID: " + produtos[index].id.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            new Text("Nome: " + produtos[index].nome,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            new Text(
                "Unidade de Medida: " +
                    produtos[index].unidadeMedida.toUpperCase(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            new Text("Valor: " + produtos[index].valorCusto.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ];
          return new Card(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: produto,
            ),
          );
        });
  }
}
