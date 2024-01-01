// import 'package:flutter/material.dart'; //เก็บ widget UI ฝั้ง Android ทั้งหมดไว้ที่นี้
// // ถ้าเป็นฝั้ง ios จะเปลี่ยนจาก  material เป็น cupertino

// void main() { // ฟังก์ชั้นหลังของเเอพ
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget { // คลาสหลักของเเอพ แต่ไม่สามารถอัพเดตสถานะได้
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Scaffold( // เป็นตัวเเบ่งสัดส่วนของcodeระหว่าง appbar กับ body
//         body: Center(
//           child: Text('Hi!'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Text('Tonnam12'),
        ),
      ),
    );
  }
}
