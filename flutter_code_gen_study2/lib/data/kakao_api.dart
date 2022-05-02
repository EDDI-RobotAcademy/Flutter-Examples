import 'dart:convert';

import 'package:flutter_code_gen_study2/model/kakao_photo.dart';
import 'package:http/http.dart' as http;

import 'kakao_photo_api_repository.dart';

class KakaoApi implements KakaoPhotoApiRepository {
  static const String restAPIKey = "yourKakaoRESTKey";
  static const baseUrl = 'https://dapi.kakao.com/v2/search/image';

  @override
  Future<List<KakaoPhoto>> fetchPhoto(String query,
      {http.Client? client}) async {
    client ??= http.Client();

    final response = await client.get(Uri.parse('$baseUrl?query=$query'),
        headers: {'Authorization': 'KakaoAK $restAPIKey'});

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable documents = jsonResponse['documents'];
    return documents.map((e) => KakaoPhoto.fromJson(e)).toList();
  }
}
