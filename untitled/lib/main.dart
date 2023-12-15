import 'package:flutter/material.dart';
import 'package:untitled/temp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 기본적인 widgets
      // Text('text')
      // Icon(Icons.star)
      // Image(image: AssetImage('assets/dog.jpg'))
      // Container(width: 50, height: 50, color: Colors.blue,)
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              '앱임',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
          body: Column(
            children: [
              Text('안녕'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Temp()));
                  },
                  child: Text('temp로 이동')
              )
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          ),
        )
    );
  }
}
