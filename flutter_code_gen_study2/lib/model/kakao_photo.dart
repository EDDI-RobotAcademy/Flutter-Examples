import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kakao_photo.freezed.dart';
part 'kakao_photo.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@freezed
class KakaoPhoto with _$KakaoPhoto {
  factory KakaoPhoto({
    required String image_url,
  }) = _KakaoPhoto;

  factory KakaoPhoto.fromJson(Map<String, dynamic> json) => _$KakaoPhotoFromJson(json);
}