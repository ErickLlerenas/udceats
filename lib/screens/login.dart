import 'package:flutter/material.dart';
import 'package:udc_eats/screens/home.dart';

class Login extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'UDC EATS',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 42,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40),
                    Image.asset(
                      'assets/images/logo.png',
                      width: 300,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'No. Cuenta',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingresa tu No. de cuenta';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Contraseña',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Ingresa tu contraseña';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40),
                    TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.teal)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Text(
                          'Ingresar',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/bg.png')
          ],
        ));
  }
}
