import 'package:flutter_mvvm_study4/model/kakao_photo.dart';

abstract class KakaoPhotoApiRepository {
  Future<List<KakaoPhoto>> fetchPhoto(String query);
}
