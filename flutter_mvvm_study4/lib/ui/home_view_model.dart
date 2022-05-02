import 'dart:async';

import 'package:flutter_mvvm_study4/data/kakao_api.dart';
import 'package:flutter_mvvm_study4/data/kakao_photo_api_repository.dart';
import 'package:flutter_mvvm_study4/model/kakao_photo.dart';

// 분리가 잘 되어 있으면 테스트를 작성하는것도 수월하다.
class HomeViewModel {
  final KakaoPhotoApiRepository repository;

  final _kakaoPhotoStreamController = StreamController<List<KakaoPhoto>>()
    ..add([]);
  Stream<List<KakaoPhoto>> get photoStream =>
      _kakaoPhotoStreamController.stream;

  HomeViewModel(this.repository);

  Future<void> fetch(String query) async {
    final result = await repository.fetchPhoto(query);
    _kakaoPhotoStreamController.add(result);
  }
}
