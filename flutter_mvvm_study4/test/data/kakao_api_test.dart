import 'package:flutter_mvvm_study4/data/kakao_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'kakao_api_test.mocks.dart';

// flutter pub run build_runner build
@GenerateMocks([http.Client])
void main() {
  test('Kakao API 에 대한 Data 를 잘 처리해야 한다', () async {
    final api = KakaoApi();

    final client = MockClient();
    const String query = 'strawberry';

    when(client.get(Uri.parse('${KakaoApi.baseUrl}?query=$query'),
            headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}))
        .thenAnswer((_) async => http.Response(fakeJsonBody, 200));

    // 만약에 서버에 문제가 발생한 경우 테스트가 가능한가 ?
    final result = await api.fetchPhoto('strawberry', client: client);

    expect(result.length > 10, true);

    verify(client.get(Uri.parse('${KakaoApi.baseUrl}?query=$query'),
        headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}));
  });
}

String fakeJsonBody = """

""";
