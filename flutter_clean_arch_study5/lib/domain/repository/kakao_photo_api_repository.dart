import 'package:flutter_clean_arch_study5/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study5/domain/model/kakao_photo.dart';

abstract class KakaoPhotoApiRepository {
  Future<Result<List<KakaoPhoto>>> fetchPhoto(String query);
}