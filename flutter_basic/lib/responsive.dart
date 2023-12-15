import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('앱임', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          children: [
            // ??% 사용하기: Flexible 위젯으로 감싸기(row, column 둘 다 가능함)
            // 박스 하나를 넓게 채우기: Expanded 위젯 사용하기
            Flexible(child: Container(color: Colors.blue), flex: 5),
            Flexible(child: Container(color: Colors.green), flex: 5),
            Expanded(child: Container(color: Colors.red,))      // flex: 1과 똑같음
          ],
        ),
      ),
    );
  }
}
