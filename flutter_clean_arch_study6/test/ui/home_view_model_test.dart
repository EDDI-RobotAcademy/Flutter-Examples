import 'package:flutter_clean_arch_study6/data/data_source/kakao/result.dart';
import 'package:flutter_clean_arch_study6/domain/repository/kakao_photo_api_repository.dart';
import 'package:flutter_clean_arch_study6/domain/model/kakao_photo.dart';
import 'package:flutter_clean_arch_study6/domain/use_case/kakao/get_photos_use_case.dart';
import 'package:flutter_clean_arch_study6/presentation/home/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter test
void main() {
  test('Kakao Image API Stream 동작 테스트', () async {
    final viewModel =
        HomeViewModel(GetPhotosUseCase(FakeKakaoPhotoApiRepository()));

    await viewModel.fetch('watermelon');

    final result = fakeJson.map((e) => KakaoPhoto.fromJson(e)).toList();

    expect(
      viewModel.state.photos,
      result,
    );
  });
}

class FakeKakaoPhotoApiRepository extends KakaoPhotoApiRepository {
  @override
  Future<Result<List<KakaoPhoto>>> fetchPhoto(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return Result.success(fakeJson.map((e) => KakaoPhoto.fromJson(e)).toList());
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
