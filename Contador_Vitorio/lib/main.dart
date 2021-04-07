import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Contador de Pessoas', home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _contador = 0;
  String _infoText = 'Pode Entrar!';
  
  void _changeContador(int numero) {
    setState(() {
      _contador += numero;

      if (_contador < 0) {
        _infoText = 'Opa!! inverteu';
      } else if (_contador <= 10) {
        _infoText = 'Pode Entrar!';
      } else {
        _infoText = 'Lotado!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEU CONTADOR'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pessoa: $_contador',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    child: Text(
                      '+1',
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changeContador(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextButton(
                    child: Text(
                      '-1',
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    ),
                    onPressed: () {
                      _changeContador(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        ),
      ),
    );
  }
}
