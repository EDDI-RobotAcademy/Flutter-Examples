import 'package:flutter_provider_study/data/kakao_photo_api_repository.dart';
import 'package:flutter_provider_study/model/kakao_photo.dart';
import 'package:flutter_provider_study/ui/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter test
void main() {
  test('Kakao Image API Stream 동작 테스트', () async {
    final viewModel = HomeViewModel(FakeKakaoPhotoApiRepository());

    await viewModel.fetch('watermelon');

    final result = fakeJson.map((e) => KakaoPhoto.fromJson(e)).toList();

    expect(
      viewModel.photoStream,
      emitsInOrder([
        equals([]),
        equals(result),
      ]),
    );
  });
}

class FakeKakaoPhotoApiRepository extends KakaoPhotoApiRepository {
  @override
  Future<List<KakaoPhoto>> fetchPhoto(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return fakeJson.map((e) => KakaoPhoto.fromJson(e)).toList();
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "collection": "test",
    "datetime": "test",
    "display_sitename": "test",
    "doc_url": "test",
    "height": 1234,
    "image_url": "test",
    "thumbnail_url": "test",
    "width": 1234
  }
];
