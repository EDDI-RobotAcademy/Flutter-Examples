import 'package:flutter/material.dart';
import 'package:flutter_sep_study3/data/photo_inherited_widget.dart';
import 'package:flutter_sep_study3/ui/homeScreen.dart';

import 'data/api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoInheritedWidget(api: KakaoApi(), child: const HomeScreen()),
    );
  }
}
