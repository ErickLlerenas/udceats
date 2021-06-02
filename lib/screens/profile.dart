import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.teal,
        title: Text('Perfil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/user.png'),
            Text(
              'Hola Erick',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              '20150926',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'Facultad de Telemática',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              'Ingeniería en Software',
              style: TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
