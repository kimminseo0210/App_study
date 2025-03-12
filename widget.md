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