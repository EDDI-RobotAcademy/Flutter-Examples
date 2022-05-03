import 'dart:convert';

import 'package:http/http.dart' as http;

class KakaoApi {
  final http.Client client;

  KakaoApi(this.client);

  static const String restAPIKey = "yourKakaoRESTKey";
  static const baseUrl = 'https://dapi.kakao.com/v2/search/image';

  Future<Iterable> fetch(String query) async {
    final response = await client.get(Uri.parse('$baseUrl?query=$query'),
        headers: {'Authorization': 'KakaoAK $restAPIKey'});

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable documents = jsonResponse['documents'];
    return documents;
  }
}
