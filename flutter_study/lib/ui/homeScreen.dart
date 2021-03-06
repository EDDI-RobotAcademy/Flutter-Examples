import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                suffixIcon: IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(Icons.search))
              ),
            ),
          ),
          Expanded(child:
            GridView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://cdn.pixabay.com/photo/2013/07/12/17/47/test-pattern-152459_960_720.png'),
                    )
                  ),
                );
              })
          )
        ],
      ),
    );
  }
}
