import 'package:flutter/material.dart';
import 'package:flutter_clean_arch_study7/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study7/data/repository/kakao/kakao_photo_api_repository_impl.dart';
import 'package:flutter_clean_arch_study7/di/provider_setup.dart';
import 'package:flutter_clean_arch_study7/domain/use_case/kakao/get_photos_use_case.dart';
import 'package:flutter_clean_arch_study7/presentation/home/home_screen.dart';
import 'package:flutter_clean_arch_study7/presentation/home/home_view_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
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
          create: (_) => HomeViewModel(GetPhotosUseCase(
              KakaoPhotoApiRepositoryImpl(KakaoApi(http.Client())))),
          child: const HomeScreen()),
    );
  }
}
