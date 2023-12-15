import 'package:flutter/material.dart';
import 'package:untitled/replace.dart';

class Temp extends StatelessWidget {
  const Temp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Text('temp'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Replace()));
              },
              child: Text('main으로 이동')
          )
        ],
      ),
    );
  }
}
