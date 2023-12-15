import 'package:flutter/material.dart';
import 'package:flutter_basic/list_view.dart';

void main() {
  runApp(const ListViewExample());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              '앱임',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            // double.infinity: kotlin의 match_parent와 같은 기능
            // margin 주는 방법: EdgeInsets.all(20)
            // decoration: box의 여러 장식 추가 가능
            // border, color, shape 설정 등등 가능
            width: double.infinity, height: 50, margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.black),
              shape: BoxShape.rectangle
            ),
          ),
        ),
      ),
    );
  }
}