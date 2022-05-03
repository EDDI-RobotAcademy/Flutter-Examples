import 'dart:async';
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_arch_study2/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study2/domain/repository/kakao_photo_api_repository.dart';
import 'package:flutter_clean_arch_study2/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study2/presentation/home/home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  final KakaoPhotoApiRepository repository;

  List<KakaoPhoto> _photos = [];

  UnmodifiableListView<KakaoPhoto> get photos => UnmodifiableListView(_photos);

  final _eventController = StreamController<HomeUiEvent>();
  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel(this.repository);

  Future<void> fetch(String query) async {
    final Result<List<KakaoPhoto>> result = await repository.fetchPhoto(query);

    result.when(success: (photos) {
      _photos = photos;
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
  }
}
