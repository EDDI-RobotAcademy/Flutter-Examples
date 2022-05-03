import 'package:flutter_clean_arch_study3/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study3/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study3/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study3/domain/repository/kakao_photo_api_repository.dart';

class KakaoPhotoApiRepositoryImpl implements KakaoPhotoApiRepository {
  KakaoApi api;

  KakaoPhotoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<KakaoPhoto>>> fetchPhoto(String query) async {
    final Result<Iterable> result = await api.fetch(query);

    return result.when(
      success: (iterable) {
        return Result.success(
            iterable.map((e) => KakaoPhoto.fromJson(e)).toList());
      },
      error: (message) {
        return Result.error(message);
      },
    );
  }
}
