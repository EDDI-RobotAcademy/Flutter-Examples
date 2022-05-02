import 'package:flutter_mvvm_study2/model/kakao_photo.dart';

abstract class KakaoPhotoApiRepository {
  Future<List<KakaoPhoto>> fetchPhoto(String query);
}
