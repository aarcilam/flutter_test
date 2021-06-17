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
            Text(_count.toString(),style: _estiloTexto)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        FloatingActionButton(
          onPressed: _aumentar,
          child: Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _restar,
          child: Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: _reset,
          child: Text('0'),
        ),
      ],
    );
  }

  void _aumentar(){
    print('aumento');
    setState(() {
      _count ++;
    });
  }

  void _restar(){
    print('resto');
    setState(() {
      _count --;
    });
  }

  void _reset(){
    print('reseteo');
    setState(() {
      _count = 0;
    });
  }
}