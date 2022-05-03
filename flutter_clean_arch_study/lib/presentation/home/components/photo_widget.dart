import 'package:flutter/cupertino.dart';

import 'package:flutter_clean_arch_study/domain/model/kakao_photo.dart';

class PhotoWidget extends StatelessWidget {
  final KakaoPhoto kakaoPhoto;

  const PhotoWidget({Key? key, required this.kakaoPhoto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16.0)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(kakaoPhoto.image_url),
          )),
    );
  }
}
