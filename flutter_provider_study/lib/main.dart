import 'package:flutter/material.dart';
import 'package:flutter_provider_study/data/kakao_api.dart';
import 'package:flutter_provider_study/ui/home_screen.dart';
import 'package:flutter_provider_study/ui/home_view_model.dart';
import 'package:provider/provider.dart';

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
      home: Provider(
          create: (_) => HomeViewModel(KakaoApi()), child: const HomeScreen()),
    );
  }
}