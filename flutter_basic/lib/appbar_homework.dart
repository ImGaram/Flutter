import 'package:flutter/material.dart';

class AppbarHomeWork extends StatelessWidget {
  const AppbarHomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text(
                '금호동 3가',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700
                ),
              ),
              Icon(Icons.keyboard_arrow_down_sharp)
            ],
          ),
          actions: const [
            SizedBox(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.search),
                  Icon(Icons.list),
                  Icon(Icons.notifications)
                ],
              ),
            )
          ]
        ),
        body: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              margin: const EdgeInsets.all(10),
              child: const Image(image: AssetImage('assets/camera.jpg')),
            ),
            const SizedBox(
              width: 300,
              height: 130,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '캐논 DSLR 100D (단렌즈,\n충전기 16기가SD 포함)',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '성동구 행당동 . 끌올 10분 전',
                    style: TextStyle(
                      color: Color(0xffa5a5a5)
                    ),
                  ),
                  Text(
                    '210,000원',
                    style: TextStyle(
                      fontWeight: FontWeight.w900
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.thumb_up),
                      Text('4')
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
