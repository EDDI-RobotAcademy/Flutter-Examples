import 'package:flutter_mvvm_study/data/api.dart';
import 'package:flutter_mvvm_study/model/kakao_photo.dart';
import 'package:flutter_mvvm_study/ui/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Kakao Image API Stream 동작 테스트', () async {
    // 실제로 KakaoApi() 가 잘못되면 HomeViewModel() 테스트가 불가함
    // 테스트는 특정한 녀석의 의존되어 실행되면 안됨
    final viewModel = HomeViewModel(KakaoApi());

    await viewModel.fetch('watermelon');

    expect(
      viewModel.photoStream,
      emitsInOrder([isA<List<KakaoPhoto>>()]),
    );
  });
}
