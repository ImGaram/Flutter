import 'package:flutter/material.dart';

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appbar 스타일링
        // title: set appbar title
        // leading: appbar icon(appbar 좌측 icon)
        // action: appbar 우측 icon
        appBar: AppBar(
            title: const Text(
                '앱임',
              style: TextStyle(color: Colors.white)
            ),
          leading: const Icon(Icons.list),
          actions: const [
            Icon(Icons.star),
            Icon(Icons.ac_unit)
          ],
          backgroundColor: Colors.blue,
        ),
        body: const SizedBox(
          // text 다루기
          // text의 style 파라미터를 이용해 사용 가능
          // color: text의 색 지정
          // fontsize: text의 크기 지정
          child: Text(
              '안녕하세요',
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
              fontWeight: FontWeight.w900
            ),
          ),
        ),
      ),
    );
  }
}
