import 'dart:convert';

import 'package:flutter_clean_arch_study/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study/domain/model/kakao_photo.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_clean_arch_study/domain/repository/kakao_photo_api_repository.dart';

class KakaoPhotoApiRepositoryImpl implements KakaoPhotoApiRepository {
  KakaoApi api;

  KakaoPhotoApiRepositoryImpl(this.api);

  @override
  Future<List<KakaoPhoto>> fetchPhoto(String query) async {
    final result = await api.fetch(query);

    return result.map((e) => KakaoPhoto.fromJson(e)).toList();
  }
}
