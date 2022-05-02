import 'package:flutter/cupertino.dart';
import 'package:flutter_code_gen_study/ui/home_view_model.dart';

class PhotoInheritedWidget extends InheritedWidget {
  final HomeViewModel viewModel;

  const PhotoInheritedWidget(
      {Key? key, required this.viewModel, required Widget child})
      : super(key: key, child: child);

  static PhotoInheritedWidget? of(BuildContext context) {
    final PhotoInheritedWidget? result =
        context.dependOnInheritedWidgetOfExactType<PhotoInheritedWidget>();
    assert(result != null, 'No KakaoApi found in context');
    return result;
  }

  @override
  bool updateShouldNotify(PhotoInheritedWidget oldWidget) {
    return true;
  }
}
