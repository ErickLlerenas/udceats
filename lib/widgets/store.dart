import 'package:flutter/material.dart';
import 'package:udc_eats/screens/store_info.dart';

class Store extends StatefulWidget {
  final Map store;

  Store({required this.store});

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => StoreInfo(
                    items: widget.store['items'], name: widget.store['name'])));
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(widget.store['img']),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.orange,
                  ),
                  Icon(
                    Icons.star_half_sharp,
                    color: Colors.orange,
                  ),
                  Text('(${widget.store["reviewCount"]})')
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    widget.store['name'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                widget.store['description'],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
