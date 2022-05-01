import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_sep_study4/data/api.dart';

import 'package:flutter_sep_study4/model/kakao_photo.dart';

// 불변 객체만 올 수 있음
class PhotoInheritedWidget extends InheritedWidget {
  final KakaoApi api;

  final _kakaoPhotoStreamController = StreamController<List<KakaoPhoto>>()
    ..add([]);
  Stream<List<KakaoPhoto>> get photoStream =>
      _kakaoPhotoStreamController.stream;

  PhotoInheritedWidget({Key? key, required this.api, required Widget child})
      : super(key: key, child: child);

  static PhotoInheritedWidget? of(BuildContext context) {
    final PhotoInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PhotoInheritedWidget>();
    assert(result != null, 'No KakaoApi found in context');
    return result;
  }

  Future<void> fetch(String query) async {
    final result = await api.fetchPhoto(query);
    _kakaoPhotoStreamController.add(result);
  }

  @override
  bool updateShouldNotify(PhotoInheritedWidget oldWidget) {
    return oldWidget.api != api;
  }
}
