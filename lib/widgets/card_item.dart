import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  final Map item;
  CardItem({required this.item});

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                widget.item['title'] + " \$" + widget.item['price'].toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text(widget.item['description']),
              Row(
                children: [
                  TextButton(
                      onPressed: () {
                        if (count > 0) {
                          setState(() {
                            count--;
                          });
                        }
                      },
                      child: Text('-')),
                  Text('$count'),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Text('+'))
                ],
              )
            ],
          ),
        ),
        Expanded(
            child: Image.asset(
          widget.item['img'],
        ))
      ],
    ));
  }
}
