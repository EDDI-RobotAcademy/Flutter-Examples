import 'dart:async';

import 'package:flutter_mvvm_study/data/api.dart';

import 'package:flutter_mvvm_study/model/kakao_photo.dart';

// 분리가 잘 되어 있으면 테스트를 작성하는것도 수월하다.
class HomeViewModel {
  final KakaoApi api;

  final _kakaoPhotoStreamController = StreamController<List<KakaoPhoto>>()
    ..add([]);
  Stream<List<KakaoPhoto>> get photoStream =>
      _kakaoPhotoStreamController.stream;

  HomeViewModel(this.api);

  Future<void> fetch(String query) async {
    final result = await api.fetchPhoto(query);
    _kakaoPhotoStreamController.add(result);
  }
}
