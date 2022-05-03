import 'dart:math';

import 'package:flutter_clean_arch_study6/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study6/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study6/domain/repository/kakao_photo_api_repository.dart';

class GetPhotosUseCase {
  final KakaoPhotoApiRepository repository;

  GetPhotosUseCase(this.repository);

  //Future<Result<List<KakaoPhoto>>> execute(String query) async {
  Future<Result<List<KakaoPhoto>>> call(String query) async {
    final result = await repository.fetchPhoto(query);

    return result.when(success: (photos) {
      return Result.success(photos.sublist(0, min(15, photos.length)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
