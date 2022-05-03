import 'package:flutter_clean_arch_study4/domain/model/kakao_photo.dart';

class HomeState {
  // 상태가 많아지면 ? Code Generation
  final List<KakaoPhoto> photos;
  final bool isLoading;

  HomeState(this.photos, this.isLoading);

  HomeState copy({List<KakaoPhoto>? photos, bool? isLoading}) {
    return HomeState(photos ??= this.photos, isLoading ??= this.isLoading);
  }
}
