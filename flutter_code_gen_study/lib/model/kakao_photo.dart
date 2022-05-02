import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'kakao_photo.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs
@JsonSerializable()
class KakaoPhoto extends Equatable {  // Equatable 로 불변 객체가 되어버림
  // image_url 이 들어오면 String image_url에 맵핑
  @JsonKey(name: 'image_url')
  final String image_url;

  KakaoPhoto({required this.image_url});

  factory KakaoPhoto.fromJson(Map<String, dynamic> json) => _$KakaoPhotoFromJson(json);

  Map<String, dynamic> toJson() => _$KakaoPhotoToJson(this);

  @override
  List<Object?> get props => [image_url];
}