import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.attach_money),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Saldo do Colégio A. Frota',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(23),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Limite diário para compras:',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'R\$ 1.200,00',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Limite disponivel R\$: 196,67',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 3,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        width: 8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.remove_shopping_cart,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Flexible(
                        child: Text(
                      'Sua última compra foi no valor de R\$ 1003,33',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ))
                  ],
                ),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }
}
