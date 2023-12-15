import 'package:flutter/material.dart';

class Replace extends StatelessWidget {
  const Replace({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('back to main'),
      ),
    );
  }
}
