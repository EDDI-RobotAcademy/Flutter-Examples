import 'package:flutter_mvvm_study3/model/kakao_photo.dart';

abstract class KakaoPhotoApiRepository {
  Future<List<KakaoPhoto>> fetchPhoto(String query);
}
