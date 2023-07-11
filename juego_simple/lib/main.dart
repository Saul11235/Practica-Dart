
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(NumberGuessingGame());

class NumberGuessingGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Guessing Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NumberGuessingPage(),
    );
  }
}

class NumberGuessingPage extends StatefulWidget {
  @override
  _NumberGuessingPageState createState() => _NumberGuessingPageState();
}

class _NumberGuessingPageState extends State<NumberGuessingPage> {
  final int _targetNumber = Random().nextInt(100) + 1;
  int _guess;
  String _resultText = '';

  void _checkGuess() {
    setState(() {
      if (_guess == _targetNumber) {
        _resultText = '¡Adivinaste!';
      } else if (_guess < _targetNumber) {
        _resultText = 'Demasiado bajo. Intenta de nuevo.';
      } else {
        _resultText = 'Demasiado alto. Intenta de nuevo.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Guessing Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Adivina el número entre 1 y 100:',
              style: TextStyle(fontSize: 20.0),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _guess = int.tryParse(value);
                });
              },
            ),
            SizedBox(height: 20.0),
            RaisedButton(
              child: Text('Comprobar'),
              onPressed: _checkGuess,
            ),
            SizedBox(height: 20.0),
            Text(
              _resultText,
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
