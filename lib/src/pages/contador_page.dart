import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de clicks: ',
                style: _estiloTexto,
              ),
              Text(
                '$_cont',
                style: _estiloTexto,
              ),
            ],
          ),
        ),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: () {
            _reset();
          },
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          onPressed: () {
            _substract();
          },
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: () {
            _add();
          },
          child: Icon(Icons.add),
        )
      ],
    );
  }

  void _add() {
    setState(() {
      _cont++;
    });
  }

  void _reset() {
    setState(() {
      _cont = 0;
    });
  }

  void _substract() {
    setState(() {
      _cont--;
    });
  }
}
