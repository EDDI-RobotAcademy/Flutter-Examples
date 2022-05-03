import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_study6/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study6/data/repository/kakao/kakao_photo_api_repository_impl.dart';
import 'package:flutter_clean_arch_study6/domain/use_case/kakao/get_photos_use_case.dart';
import 'package:flutter_clean_arch_study6/presentation/home/home_screen.dart';
import 'package:flutter_clean_arch_study6/presentation/home/home_view_model.dart';
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
          // 의존성을 주입하는 작업이 복잡한 앱을 만들수록 중요해짐
          // 그러므로 별도로 관리하는 방식을 취하면 좋음
          create: (_) => HomeViewModel(GetPhotosUseCase(
              KakaoPhotoApiRepositoryImpl(KakaoApi(http.Client())))),
          child: const HomeScreen()),
    );
  }
}
