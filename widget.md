Widget
======

---

## 기본 위젯

> ### Box
>
> Container() or SizedBox()
> Style을 줄 때는 ( Style 명 : 값 )
> Flutter 사이즈 단위 : LP   50LP == 1.2cm
>
> ---
>
> ---
>
> ### Image
>
> 이미지를 넣을 땐 Image.assets('경로')
> Flutter 프로젝트에 assets 파일을 만들어야함
>
> ```
> pubspec.yaml
> ----------------
> Flutter:
>     assets:
>         assets/ 등록
> ```
>
> ---
>
> ---
>
> ### Icon
>
> 아이콘을 넣고 싶으면 Icon(Icons.아이콘이름)
>
> ---
>
> ---
>
> ### Text
>
> 글자를 넣고 싶으면 Text('내용')

## Scaffold

> Scaffold : 상중하로 나눠주는 위젯
>
> ```
> return MaterialApp(
>   home: Scaffold(
>       appBar: AppBar(),
>       body: Container(),
>       bottomNavigationBar: BottomAppBar(),
> ) //Scaffold
> ```
> appBar: AppBar() = 상단 위젯
> body: Container() = 중간 
> bottomNavigationBar: BottomAppBar() = 하단 위젯
> * * *
> 여러 위젯을 가로로
> ```
> Row(
>   children: [ 
>       Icon(Icons.star),
>       Icon(Icons.star),
>   ]
> ),  // Row
> ```
> * * *
> 여러 위젯을 세로로
> ```
> Column(
>   children: [ 
>       Icon(Icons.star),
>       Icon(Icons.star),
>   ]
> ),  // Column
> ```
> * * *
> 중앙 정렬
> ```
> Row(
>   mainAxisAlignment: MainAxisAlignment.center, // 중앙정렬
> mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 자동 정렬
> // css의 display:flex와 매우 유사
> )
> ```
> * * *
> SizedBox는 width, height, child만 필요할 때

## 커스텀 위젯
>```
>stless + tab
>class name extends StatelessWidget {
>   const name({key? key}) : super(key: key);
>
>   @override
>   Widget build(BuildContext context) {
>       return 코드작성 부분(
>       );
>   }
>   사용시 name()
>```
>* * *
>custom widget은 class로 만듬
> - extends가 오른쪽에 있는 class를 복사해서 왼쪽으로 옮겨달라는 함수 - 변수, 함수 전부 복사 함
> - name 함수를 가져올 때 어떤 파라미터를 가져올지
> - @override = 내 함수를 먼저 적용한다
> - Widget __ BuildContext는 없어도 됨 
> - build(context)에서 build는 함수로 필수
> - build안의 return 옆에 사용할 문법 작성
> * * *
> 변수, 함수로 축약 가능
> ```
> var a = SizedBox(
>   child: Text('안녕'),
> );
> ```
> 이러한 방법은 성능 상의 이슈가 있을 수 있음
> 평생 바뀌지 않는 것들만 변수로 할당
> * * *
> ### !! 재사용이 많은 UI들을 커스텀 위젯으로 만들어라 !!
## ListView
> - 위젯은 글자가 아무리 많아도 <strong>스크롤바가 자동으로 생기지 않음</strong>
> - 긴 목록이 필요하면 body: Column()이 아닌 body: ListView()를 사용한다
> - 추가적으로 사용자가 보지않는 곳은 로딩을 하지 않아 <strong>메모리 절약이 가능하다</strong>