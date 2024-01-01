import 'package:flutter/material.dart';

void main() => runApp(const MainApp()); //เเบบย่อ

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('AppBar Tonnam'),
          ),
          // body: Center(
          //   child: Text('Body Section'),
          // ),

          //ส่วนนี้จะเพิ่มทั้งขนาดตัวอักษร
            body: Center(
                child: Column(
              children: [
                SizedBox(height: 100,),
                Text('Top', textScaleFactor: 3.0,),
                SizedBox(height: 40,),
                Text('Middle', textScaleFactor: 2.0,),
                SizedBox(height: 20,),
                Text('Bottom'),
              ],
            )
          ),

        //   body: Center(
        //       child: Row(
        //     children: [
        //       SizedBox(width: 100,),
        //       Text('Left   '),
        //       SizedBox(width: 40,),
        //       Text('Center   '),
        //       SizedBox(width: 20,), //Sizeboxจะเป็นการเว้นช่องว่างของเเต่ละคำ
        //       Text('Right'),
        //     ],
        //   )
        // ),
      ),
    );
}
