import 'dart:async';
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_provider_study2/data/kakao_photo_api_repository.dart';
import 'package:flutter_provider_study2/model/kakao_photo.dart';

class HomeViewModel with ChangeNotifier {
  final KakaoPhotoApiRepository repository;

  List<KakaoPhoto> _photos = [];

  UnmodifiableListView<KakaoPhoto> get photos => UnmodifiableListView(_photos);

  HomeViewModel(this.repository);

  Future<void> fetch(String query) async {
    final result = await repository.fetchPhoto(query);
    _photos = result;

    notifyListeners();
  }
}
