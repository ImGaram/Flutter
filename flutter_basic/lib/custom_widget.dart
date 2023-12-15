import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('앱임', style: TextStyle(color: Colors.white)),
        ),
        body: const ShopItem(),
      ),
    );
  }
}

// custom 위젯 만들기
// android로 치면 compose에서 composable component를 만들어서 따로 함수화하는 것과 비슷함
// stless 단축키를 이용해서 custom widget의 껍데기를 생성 후, build의 return에 자신이 사용할 위젯을 갖다 붙이면 됨
// 커스텀 위젯은 class로 만든다.(class: 변수, 함수를 담을 수 있는 통)
// 커스텀 위젯을 남발하면 안됨: 나중에 state 관리가 힘들어질 수 있음.
// 재사용이 많은 UI들만 커스텀 위젯으로 만들기
class ShopItem extends StatelessWidget {
  const ShopItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text('안녕'),
    );
  }
}

// 위젯을 변수로 담아
// 위젯을 변수로 만들어서 사용 가능함
// 변수에 담을 때 주의사항: 절대 변하지 않는 데이터들만 변수로 담을 것(로고, topBar, bottomBar 등등)
// 변하는 데이터를 변수에 담으면 성능 상 문제가 발생할 수 있음
var tempWidget = const SizedBox(
  child: Text('안녕'),
);