import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _crearFondo( context ),
          _crearLogin( context )
        ],
      ),
    );
  }

  Widget _crearLogin(BuildContext context) {
    return 	Container(
      child: TextField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
    );
  }

  Widget _crearFondo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.9, 1],
          colors: [Colors.orange[50], Colors.orange[900]]
        )
      ),
    );
  }
}