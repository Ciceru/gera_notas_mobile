import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:gera_notas/apiJson/api.dart';
import 'package:gera_notas/apiJson/cliente.dart';
import 'package:gera_notas/pages/home/home_page.dart';

//void main() => runApp(MyAppClientes());

class MyAppClientes extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Http-Json-ListVie',
      home: BuildListView(),
    );
  }
}

class BuildListView extends StatefulWidget {
  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  //var users = new List<User>();
  var clientes = new List<Clientes>();

  _getClient() {
    API.getClientes().then((response) {
      setState(() {
        Iterable lista = json.decode(response.body);
        //users = lista.map((model) => User.fromJson(model)).toList();
        clientes = lista.map((model) => Clientes.fromJson(model)).toList();
      });
    });
  }

  _BuildListViewState() {
    _getClient();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) => HomePage()));
              }),
        ],
        title: Text('Lista de Clientes'),
      ),
      body: listaUsuarios(),
    );
  }

  listaUsuarios() {
    return ListView.builder(
        //itemCount: users.length,
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              clientes[index].id.toString(),
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          );
        });
  }
}
