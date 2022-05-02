import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_study3/data/photo_inherited_widget.dart';
import 'package:flutter_mvvm_study3/model/kakao_photo.dart';
import 'package:flutter_mvvm_study3/ui/widget/photo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = PhotoInheritedWidget.of(context)?.viewModel;

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
                        viewModel?.fetch(_controller.text);
                      },
                      icon: const Icon(Icons.search))),
            ),
          ),
          StreamBuilder<List<KakaoPhoto>>(
              stream: viewModel?.photoStream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                }
                final kakaoPhotos = snapshot.data!;

                return Expanded(
                    child: GridView.builder(
                        padding: const EdgeInsets.all(16.0),
                        itemCount: kakaoPhotos.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemBuilder: (context, index) {
                          final kakaoPhoto = kakaoPhotos[index];
                          return PhotoWidget(kakaoPhoto: kakaoPhoto);
                        }));
              })
        ],
      ),
    );
  }
}
