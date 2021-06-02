import 'package:flutter/material.dart';
import 'package:udc_eats/screens/order_finished.dart';

class OrderInProgress extends StatefulWidget {
  @override
  _OrderInProgressState createState() => _OrderInProgressState();
}

class _OrderInProgressState extends State<OrderInProgress> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => OrderFinished()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Orden en progreso'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/orderprogress.jpeg'),
              Text(
                'Estamos preparando tu platillo...',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('Te avisaremos cuando esté listo',
                  style: TextStyle(color: Colors.grey)),
            ],
          ),
        ));
  }
}
