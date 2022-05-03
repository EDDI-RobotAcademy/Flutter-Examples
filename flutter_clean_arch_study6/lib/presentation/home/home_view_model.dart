import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_arch_study6/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study6/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study6/domain/use_case/kakao/get_photos_use_case.dart';
import 'package:flutter_clean_arch_study6/presentation/home/home_state.dart';
import 'package:flutter_clean_arch_study6/presentation/home/home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  final GetPhotosUseCase getPhotosUseCase;

  HomeState _state = HomeState([], false);
  HomeState get state => _state;

  final _eventController = StreamController<HomeUiEvent>();
  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeViewModel(this.getPhotosUseCase);

  Future<void> fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final Result<List<KakaoPhoto>> result =
        //await getPhotosUseCase.execute(query);
        //await getPhotosUseCase.call(query);
        await getPhotosUseCase(query);

    result.when(success: (photos) {
      _state = state.copyWith(photos: photos);
      notifyListeners();
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });
    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
