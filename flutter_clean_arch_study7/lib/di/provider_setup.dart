import 'package:flutter_clean_arch_study7/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study7/data/repository/kakao/kakao_photo_api_repository_impl.dart';
import 'package:flutter_clean_arch_study7/domain/repository/kakao_photo_api_repository.dart';
import 'package:flutter_clean_arch_study7/domain/use_case/kakao/get_photos_use_case.dart';
import 'package:flutter_clean_arch_study7/presentation/home/home_view_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 독립적 객체
List<SingleChildWidget> independentModels = [
  Provider<http.Client>(
    create: (context) => http.Client(),
  ),
];

// 위의 독립적 객체에 의존성을 가지고 있는 객체
List<SingleChildWidget> dependentModels = [
  ProxyProvider<http.Client, KakaoApi>(
    update: (context, client, _) => KakaoApi(client),
  ),
  ProxyProvider<KakaoApi, KakaoPhotoApiRepository>(
    update: (context, api, _) => KakaoPhotoApiRepositoryImpl(api),
  ),
  ProxyProvider<KakaoPhotoApiRepositoryImpl, GetPhotosUseCase>(
    update: (context, repository, _) => GetPhotosUseCase(repository),
  ),
];

// ViewModels
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<HomeViewModel>(
    create: (context) => HomeViewModel(context.read<GetPhotosUseCase>()),
  ),
];
