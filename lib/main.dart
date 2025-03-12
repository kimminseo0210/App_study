import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp : 앱을 시작
  // () <- 앱 메인페이지 입력
}

// 여기부터
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  // 여기까지는 기본으로 적고 시작하는 거임

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            children: [
              Image.asset('assets/Haerin1.jpg', width: 150,),
              Container(
                child: Column(
                  children: [
                    Text('강해린입니다'),
                    Text('신창면'),

                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

