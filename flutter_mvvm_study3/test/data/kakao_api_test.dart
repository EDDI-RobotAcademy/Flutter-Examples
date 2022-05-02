import 'package:flutter_mvvm_study3/data/kakao_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Kakao API 에 대한 Data 를 잘 처리해야 한다', () async {
    final api = KakaoApi();

    // 만약에 서버에 문제가 발생한 경우 테스트가 가능한가 ?
    final result = await api.fetchPhoto('strawberry');

    expect(result.length > 10, true);
  });
}
