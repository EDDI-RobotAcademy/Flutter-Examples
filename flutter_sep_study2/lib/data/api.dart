import 'dart:convert';

import 'package:flutter_sep_study2/model/kakao_photo.dart';
import 'package:http/http.dart' as http;

class KakaoApi {
  final String restAPIKey = "yourKakaoRESTKey";
  final baseUrl = 'https://dapi.kakao.com/v2/search/image';

  Future<List<KakaoPhoto>> fetchPhoto(String query) async {
    final response = await http.get(Uri.parse('$baseUrl?query=$query'),
        headers: {'Authorization': 'KakaoAK $restAPIKey'});

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable documents = jsonResponse['documents'];
    return documents.map((e) => KakaoPhoto.fromJson(e)).toList();
  }
}
