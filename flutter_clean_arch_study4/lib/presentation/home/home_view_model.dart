import 'dart:async';
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_arch_study4/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study4/domain/repository/kakao_photo_api_repository.dart';
import 'package:flutter_clean_arch_study4/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study4/presentation/home/home_state.dart';
import 'package:flutter_clean_arch_study4/presentation/home/home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  final KakaoPhotoApiRepository repository;

  HomeState _state = HomeState([], false);
  HomeState get state => _state;

  final _eventController = StreamController<HomeUiEvent>();
  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel(this.repository);

  Future<void> fetch(String query) async {
    _state = state.copy(isLoading: true);
    notifyListeners();

    final Result<List<KakaoPhoto>> result = await repository.fetchPhoto(query);

    result.when(success: (photos) {
      _state = state.copy(photos: photos);
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
    _state = state.copy(isLoading: false);
    notifyListeners();
  }
}
