import 'package:flutter/cupertino.dart';
import 'package:flutter_sep_study3/data/api.dart';

// 원하는 위젯 트리에 원하는 객체를 전달
class PhotoInheritedWidget extends InheritedWidget {
  final KakaoApi api;

  const PhotoInheritedWidget(
      {Key? key, required this.api, required Widget child})
      : super(key: key, child: child);

  static PhotoInheritedWidget? of(BuildContext context) {
    final PhotoInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PhotoInheritedWidget>();
    assert(result != null, 'No KakaoApi found in context');
    return result;
  }

  @override
  bool updateShouldNotify(PhotoInheritedWidget oldWidget) {
    return oldWidget.api != api;
  }
}
