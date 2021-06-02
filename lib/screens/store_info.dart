import 'package:flutter/material.dart';
import 'package:udc_eats/screens/order_in_progress.dart';
import 'package:udc_eats/widgets/card_item.dart';

class StoreInfo extends StatelessWidget {
  final List items;
  final String name;
  StoreInfo({required this.items, required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(this.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items.map((item) => CardItem(item: item)).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () => _showMyDialog(context),
        child: Icon(Icons.done),
      ),
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar pedido'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text('2 Hotcakes-------------\$50')),
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text('1 Torta Cubana---------\$60')),
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text('1 Agua fresca----------\$15')),
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text('____________________________')),
                Container(
                    margin: EdgeInsets.all(8),
                    child: Text('Total: -----------------\$125'))
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.teal),
              child: const Text('Pedir', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();

                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => OrderInProgress()));
              },
            ),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.red),
              child:
                  const Text('Cancelar', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
