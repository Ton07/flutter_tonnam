import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{
  var rnd = Random();
  num _r = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('test')),
    body: Center(
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(_r.toString(), textScaleFactor: 6.0,),
          SizedBox(height: 20),
          TextButton(
            child: Text('Random Number', textScaleFactor: 2.5,),
            onPressed: (){
              setState(() {
                _r = rnd.nextInt(100);
              });
            },
          ),
        ]),
    )
  );
}
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
// }