import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // creo un nuevo widget sin estado 
  final estiloTexto = new TextStyle(fontSize: 20);
  final count = 1;
  // sobre escribo el metodo build del widget 
  @override
  Widget build(BuildContext context) {
    // un scaffold es un layout
    return Scaffold(
      appBar: AppBar(
        title: Text('logo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks',style: estiloTexto),
            Text(count.toString())
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('hola');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}