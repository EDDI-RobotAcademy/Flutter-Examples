import 'package:flutter/material.dart';
import 'package:flutter_sep_study2/ui/homeScreen.dart';

import 'data/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 외부에서 생성해서 내부에서 사용하도록 만듬
      // 예로 photo_widget 에서 정보를 필요로 한다면
      // 매번 KakaoApi() 형태로 활용해야함
      // 코드를 작성하다보면 상호간 데이터 전달등이 필요한데
      // 그때마다 이와 같은 형태가 발생하므로 InheritedWidget 을 사용하도록 한다.
      // 생성자 방식은 하위에서 필요한 모든 것들이 최상위에 모두 배치되므로
      // 흐름 파악이 어려워지고 지저분한 로직이 만들어짐
      home: HomeScreen(api: KakaoApi()),
    );
  }
}
