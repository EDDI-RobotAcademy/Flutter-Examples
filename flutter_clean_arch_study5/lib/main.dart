import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_study5/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study5/data/repository/kakao/kakao_photo_api_repository_impl.dart';
import 'package:flutter_clean_arch_study5/presentation/home/home_screen.dart';
import 'package:flutter_clean_arch_study5/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';

import 'package:http/http.dart' as http;

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
      home: ChangeNotifierProvider(
          create: (_) => HomeViewModel(
              KakaoPhotoApiRepositoryImpl(KakaoApi(http.Client()))),
          child: const HomeScreen()),
    );
  }
}
