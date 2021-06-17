import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // creo un nuevo widget sin estado 
  // sobre escribo el metodo build del widget 
  @override
  Widget build(BuildContext context) {
    // un scaffold es un layout
    return Scaffold(
      appBar: AppBar(
        title: Text('logo'),
      ),
      body: Center(
        child: Text('hola mundo'),
      ),
    );
  }
}