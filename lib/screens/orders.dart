import 'package:flutter/material.dart';
import 'package:udc_eats/screens/order_details.dart';

class Orders extends StatelessWidget {
  final List orders = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Container(),
        title: Text('Pedidos'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(children: orders.map((e) => Order()).toList())),
      ),
    );
  }
}

class Order extends StatelessWidget {
  const Order({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => OrderDetails()));
      },
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text('Doña totita',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  Text('2 productos'),
                  Text('9:54 am - Mayo 3, 2021'),
                ],
              ),
            ),
            Expanded(child: Image.asset('assets/images/food.png'))
          ],
        ),
      ),
    );
  }
}
