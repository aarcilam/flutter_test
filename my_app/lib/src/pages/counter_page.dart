import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{

  @override
  createState() {
    return _CounterPageState();
  }
}

class _CounterPageState extends State<CounterPage>{
  final _estiloTexto = new TextStyle(fontSize: 20);
  int _count = 1;

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
            Text('Numero de clicks',style: _estiloTexto),
            Text(_count.toString())
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('hola');
          
          setState(() {
            _count ++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}