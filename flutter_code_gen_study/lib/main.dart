import 'package:flutter/material.dart';
import 'package:flutter_code_gen_study/data/photo_inherited_widget.dart';
import 'package:flutter_code_gen_study/ui/home_screen.dart';
import 'package:flutter_code_gen_study/ui/home_view_model.dart';
import 'package:flutter_code_gen_study/data/kakao_api.dart';

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
      home: PhotoInheritedWidget(
          viewModel: HomeViewModel(KakaoApi()), child: const HomeScreen()),
    );
  }
}