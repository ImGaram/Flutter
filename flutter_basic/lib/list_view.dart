import 'package:flutter/material.dart';

var text = const SizedBox(height: 300, child: Text('안녕'));

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('앱임', style: TextStyle(color: Colors.white)),
        ),
        // listView: column과 같지만 scroll이 가능함
        // controller: 스크롤 감시
        // 장점: 메모리 절약
        body: ListView(
          children: [
            text,
            text,
            text,
            text,
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              icon(Icons.phone),
              icon(Icons.message),
              icon(Icons.account_box)
            ],
          ),
        ),
      ),
    );
  }

  Widget icon(IconData icon) {
    return Icon(icon);
  }
}