import 'package:flutter/material.dart';
//import 'package:gera_notas/pages/home/widgets/item_menu.dart';
import 'package:gera_notas/pages/home/widgets/item_menu/item_menu.dart';
import 'package:gera_notas/pages/home/widgets/item_menu/item_menu_conta.dart';
import 'package:gera_notas/pages/home/widgets/item_menu/item_menu_h_pedidos.dart';
import 'package:gera_notas/pages/home/widgets/item_menu/item_menu_pedidos.dart';
import 'package:gera_notas/pages/home/widgets/item_menu/item_menu_produtos.dart';
//import 'package:gera_notas/pages/home/widgets/item_menu_produtos.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 200),
        opacity: showMenu ? 1 : 0,
        child: Container(
          color: Colors.blue[800],
          height: MediaQuery.of(context).size.height * 0.60,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Image.network(
                  'https://image.flaticon.com/icons/png/512/1421/1421350.png',
                  height: 60,
                  color: Colors.white,
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Panificadora e Lanchonete Kidelicia',
                    children: [
                      TextSpan(style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: <Widget>[
                      ItemMenuPedidos(
                        icon: Icons.content_paste,
                        text: 'Fazer pedidos',
                      ),
                      ItemMenuHPedidos(
                        icon: Icons.dvr,
                        text: 'Historico de pedidos',
                      ),
                      ItemMenuConta(
                        icon: Icons.info_outline,
                        text: 'Informações da conta',
                      ),
                      ItemMenuProdutos(
                        icon: Icons.info_outline,
                        text: 'Produtos cadastrados',
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.7, color: Colors.white54)),
                        child: RaisedButton(
                          color: Colors.blue[800],
                          highlightColor: Colors.transparent,
                          elevation: 0,
                          disabledElevation: 0,
                          focusElevation: 0,
                          highlightElevation: 0,
                          hoverElevation: 0,
                          splashColor: Colors.blue[900],
                          child: Text('Sair',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
