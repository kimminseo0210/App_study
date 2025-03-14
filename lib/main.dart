import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  // runApp : 앱을 시작
  // () <- 앱 메인페이지 입력
}

Widget bottomBar = SizedBox(
  height: 65,
  child: BottomAppBar(
    color: Colors.deepPurpleAccent,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.arrow_back, color: Colors.white),
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.menu, color: Colors.white),
      ],
    ),
  ),
);

// 여기부터
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  // 여기까지는 기본으로 적고 시작하는 거임

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 20,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              addressCard(),
              addressCard(),
              addressCard(),
            ],
          ),
        ),
        bottomNavigationBar: bottomBar,
      )
    );
  }
}

// 주소록 : 사진 + 이름
class addressCard extends StatelessWidget {
  const addressCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(Icons.account_circle_rounded),
          Text('kimminseo'),
        ],
      ),
    );
  }
}

// // 하단 네비게이션 바
// class bottomBar extends StatelessWidget {
//   const bottomBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 65,
//       child: const BottomAppBar(
//         color: Colors.deepPurpleAccent,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Icon(Icons.arrow_back, color: Colors.white,),
//             Icon(Icons.home, color: Colors.white),
//             Icon(Icons.menu, color: Colors.white),
//           ],
//         ),
//       ),
//     );
//   }
// }
