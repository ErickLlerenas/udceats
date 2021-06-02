import 'package:flutter/material.dart';

class OrderFinished extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Orden lista'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/finished.jpeg'),
              Text(
                'Tu platillo está listo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('Recogelo en la cafetería receptiva',
                  style: TextStyle(color: Colors.grey)),
              Card(
                  child: Container(
                margin: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text('Datos del pedido\n', style: TextStyle(fontSize: 20)),
                    Text('Local: Doña tota\n', style: TextStyle(fontSize: 20)),
                    Text('Total: \$140', style: TextStyle(fontSize: 20))
                  ],
                ),
              )),
              Text('¡Esperamos que lo disfrutes!')
            ],
          ),
        ));
  }
}
