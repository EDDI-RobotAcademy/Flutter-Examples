import 'package:flutter_code_gen_study2/model/kakao_photo.dart';

abstract class KakaoPhotoApiRepository {
  Future<List<KakaoPhoto>> fetchPhoto(String query);
}
