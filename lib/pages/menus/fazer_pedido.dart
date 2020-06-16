import 'package:flutter/material.dart';
import 'package:gera_notas/apiJson/produtos.dart';
import 'package:gera_notas/pages/home/home_page.dart';

final TextEditingController _controladorNome = TextEditingController();
final TextEditingController _controladorQuantidade = TextEditingController();
final TextEditingController _controladorUnidadeMedida = TextEditingController();

class FazerPedidos extends StatelessWidget {
  int get id => null;

  String get unidadeMedida => null;

  double get valorCusto => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          title: Text('Realizando pedido'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controladorNome,
                decoration: InputDecoration(labelText: 'Produto'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorUnidadeMedida,
                  decoration: InputDecoration(labelText: 'Unid. Medida'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: TextField(
                  controller: _controladorQuantidade,
                  decoration: InputDecoration(labelText: 'Quantidade'),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: RaisedButton(
                  child: Text('Pedir'),
                  onPressed: () {
                    final String nome = _controladorNome.text;
                    final int quantidade =
                        int.tryParse(_controladorQuantidade.text);
                    final double UnidadeMedida =
                        double.tryParse(_controladorUnidadeMedida.text);

                    final Produtos produtoNovo =
                        Produtos(id, nome, unidadeMedida, valorCusto);
                    print(produtoNovo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
