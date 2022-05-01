import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sep_study3/data/photo_inherited_widget.dart';
import 'package:flutter_sep_study3/model/kakao_photo.dart';
import 'package:flutter_sep_study3/ui/widget/photo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  // 여전히 데이터를 담는 것이 화면 UI 파트에 존재함
  List<KakaoPhoto> _kakaoPhotos = [];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final photoInheritedWidget = PhotoInheritedWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('카카오 이미지 API 테스트 앱',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  suffixIcon: IconButton(
                      onPressed: () async {
                        final kakaoPhotos = await photoInheritedWidget?.api
                            .fetchPhoto(_controller.text);
                        setState(() {
                          _kakaoPhotos = kakaoPhotos!;
                        });
                      },
                      icon: const Icon(Icons.search))),
            ),
          ),
          Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: _kakaoPhotos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    final kakaoPhoto = _kakaoPhotos[index];
                    return PhotoWidget(kakaoPhoto: kakaoPhoto);
                  }))
        ],
      ),
    );
  }
}
