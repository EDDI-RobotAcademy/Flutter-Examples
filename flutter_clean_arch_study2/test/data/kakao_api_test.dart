import 'package:flutter_clean_arch_study2/data/data_source/kakao/kakao_api.dart';
import 'package:flutter_clean_arch_study2/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study2/data/repository/kakao/kakao_photo_api_repository_impl.dart';
import 'package:flutter_clean_arch_study2/domain/model/kakao_photo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'kakao_api_test.mocks.dart';

// flutter pub run build_runner build
@GenerateMocks([http.Client])
void main() {
  test('Kakao API 에 대한 Data 를 잘 처리해야 한다', () async {
    final client = MockClient();
    final api = KakaoPhotoApiRepositoryImpl(KakaoApi(client));

    when(client.get(Uri.parse('${KakaoApi.baseUrl}?query=apple'),
            headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}))
        .thenAnswer((_) async => http.Response(fakeJsonBody, 200));

    final Result<List<KakaoPhoto>> result = await api.fetchPhoto('apple');

    //expect((result as Success<List<KakaoPhoto>>).data.first.image_url, true);

    //verify(client.get(Uri.parse('${KakaoApi.baseUrl}?query=apple'),
    //    headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}));
  });
}

String fakeJsonBody =
    """{"documents":[{"collection":"etc","datetime":"2017-10-24T05:20:49.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/495390384","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/505/820/0/495390384.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/Bc5K7U43gwz","width":510}]}""";
