import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Detalles del pedido'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: [
          Card(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Hot cakes - \$50',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      Text('3 Hot cakes'),
                      Text('Tradicionales hot cakes con mantequilla'),
                    ],
                  ),
                ),
                Expanded(child: Image.asset('assets/images/hotcake.jpeg'))
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Carne en su jugo - \$80',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      Text('1 Carne en su jugo'),
                      Text('Tradicional carne en su jugo'),
                    ],
                  ),
                ),
                Expanded(child: Image.asset('assets/images/carneensujugo.jpeg'))
              ],
            ),
          )
        ])),
      ),
    );
  }
}
