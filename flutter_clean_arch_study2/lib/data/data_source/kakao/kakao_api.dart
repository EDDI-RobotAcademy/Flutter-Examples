import 'dart:convert';

import 'package:flutter_clean_arch_study2/data/data_source/kakao/result.dart';
import 'package:http/http.dart' as http;

class KakaoApi {
  final http.Client client;

  KakaoApi(this.client);

  static const String restAPIKey = "yourKakaoRESTKey";
  static const baseUrl = 'https://dapi.kakao.com/v2/search/image';

  Future<Result<Iterable>> fetch(String query) async {
    try {
      final response = await client.get(Uri.parse('$baseUrl?query=$query'),
          headers: {'Authorization': 'KakaoAK $restAPIKey'});

      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      Iterable documents = jsonResponse['documents'];
      return Result.success(documents);
    } catch (e) {
      return Result.error('통신 상태를 점검해주세요!');
    }
  }
}
