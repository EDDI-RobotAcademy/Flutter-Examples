import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study2/model/kakao_photo.dart';
import 'package:flutter_study2/ui/widget/photo_widget.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();

  List<KakaoPhoto> _kakaoPhotos = [];

  // 비동기 통신해야하니까
  Future<List<KakaoPhoto>> fetchPhoto (String query) async {
    const String restAPIKey = "yourKakaoRESTKey";
    final response = await http.get(
      Uri.parse('https://dapi.kakao.com/v2/search/image?query=$query'),
      headers: {'Authorization': 'KakaoAK $restAPIKey'}
    );

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    Iterable documents = jsonResponse['documents'];
    return documents.map((e) => KakaoPhoto.fromJson(e)).toList();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('카카오 이미지 API 테스트 앱',
            style: TextStyle(color: Colors.black)
        ),
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
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                suffixIcon: IconButton(
                    onPressed: () async {
                      final kakaoPhotos = await fetchPhoto(_controller.text);
                      setState(() {
                        _kakaoPhotos = kakaoPhotos;
                      });
                    },
                    icon: const Icon(Icons.search))
              ),
            ),
          ),
          Expanded(child:
            GridView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _kakaoPhotos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                final kakaoPhoto = _kakaoPhotos[index];
                return PhotoWidget(
                    kakaoPhoto: kakaoPhoto
                );
              })
          )
        ],
      ),
    );
  }
}
