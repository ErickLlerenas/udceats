import 'package:flutter/material.dart';
import 'package:udc_eats/widgets/store.dart';

class CoffeeShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List stores = [
      {
        'name': 'Doña Tita',
        'reviewCount': 128,
        'description':
            'El mejor restaurante de la universidad de colima, vendemos desayunos completos, chilaquiles...',
        'img': 'assets/images/img1.jpeg',
        'items': [
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          },
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          }
        ]
      },
      {
        'name': 'El únicio',
        'food': [
          'Hot cakes',
          'Torta Cubana',
          'Carne en su jugo',
          'Pollo en mole',
          'Chilaquiles'
        ],
        'reviewCount': 34,
        'description':
            'Vendemos desayunos completos, huevos al gusto, jugos naturales, hotcakes...',
        'img': 'assets/images/img2.jpeg',
        'items': [
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          },
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          }
        ]
      },
      {
        'name': 'Tortas moni',
        'food': [
          'Hot cakes',
          'Torta Cubana',
          'Carne en su jugo',
          'Pollo en mole',
          'Chilaquiles'
        ],
        'reviewCount': 42,
        'description':
            'Tortas de panela con queso, Tortas de lomo natural, Tortas de lomo adobado...',
        'img': 'assets/images/img1.jpeg',
        'items': [
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          },
          {
            'title': 'Hot Cakes',
            'price': 25,
            'description': '3 Hot cakes tradicionales con mantequilla',
            'img': 'assets/images/hotcake.jpeg'
          },
          {
            'title': 'Torta Cubana',
            'price': 60,
            'description': 'Auténtica y deliciosa torta cubana',
            'img': 'assets/images/tortacubana.jpeg'
          },
          {
            'title': 'Carne en su jugo',
            'price': 80,
            'description':
                'Tradicional guisado con frijoles, cebolla y cilantro',
            'img': 'assets/images/carneensujugo.jpeg'
          }
        ]
      }
    ];
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.teal,
        title: Text('Cafeterías'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: stores.map((store) => Store(store: store)).toList(),
      )),
    );
  }
}
