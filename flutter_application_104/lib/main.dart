import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  num a = 15, b = 5;
  String _txt = '';

  void btn_pressed({String op = ''}) => setState(() {
        num r = 0;
        if (op == '+') {
          r = a + b;
          _txt = '15 + 5 = $r';
        } else if (op == '-') {
          r = a - b;
          _txt = '15 - 5 = $r';
        }
        // _txt = '15 + 5 = $r';
      });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Test')),
        body: Center(
          child: Column(children: [
            SizedBox(height: 15),
            Text(_txt, textScaleFactor: 1.2),
            SizedBox(height: 20),
            btnPlus(),
            btnMinus()
          ]),
        ),
      );

  Widget btnPlus() => ElevatedButton(
      child: Text('$a + $b', textScaleFactor: 1.2),
      onPressed: () => btn_pressed(op: '+'));

  Widget btnMinus() => ElevatedButton(
      child: Text('$a - $b', textScaleFactor: 1.2),
      onPressed: () => btn_pressed(op: '-'));
}
