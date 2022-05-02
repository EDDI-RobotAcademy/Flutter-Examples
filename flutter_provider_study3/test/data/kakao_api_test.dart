import 'package:flutter_provider_study3/data/kakao_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'kakao_api_test.mocks.dart';

// flutter pub run build_runner build
@GenerateMocks([http.Client])
void main() {
  test('Kakao API 에 대한 Data 를 잘 처리해야 한다', () async {
    final api = KakaoApi();

    final client = MockClient();

    when(client.get(Uri.parse('${KakaoApi.baseUrl}?query=apple'),
            headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}))
        .thenAnswer((_) async => http.Response(fakeJsonBody, 200));

    // 만약에 서버에 문제가 발생한 경우 테스트가 가능한가 ?
    //final result = await api.fetchPhoto('apple', client: client);

    //verify(client.get(Uri.parse('${KakaoApi.baseUrl}?query=apple'),
    //    headers: {'Authorization': 'KakaoAK ${KakaoApi.restAPIKey}'}));
  });
}

String fakeJsonBody = """
{"documents":[{"collection":"etc","datetime":"2017-10-24T05:20:49.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/495390384","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/505/820/0/495390384.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/Bc5K7U43gwz","width":510},{"collection":"etc","datetime":"2017-10-23T22:13:19.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/462095925","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/682/666/0/462095925.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/3PxW9PSdNGw","width":507},{"collection":"etc","datetime":"2017-10-23T18:44:18.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-diet-concept/177313402","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/12/849/920/0/177313402.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/ByIPBloFLzo","width":507},{"collection":"etc","datetime":"2017-10-24T00:57:35.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-royal-gala-apple-isolated-on-white/533444957","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/411/648/0/533444957.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/KKsTsY5fUZH","width":507},{"collection":"etc","datetime":"2017-10-24T13:42:44.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-with-leaf/683494078","height":416,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/887/071/0/683494078.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/GPklxLBl66Z","width":416},{"collection":"etc","datetime":"2017-10-23T19:25:10.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/177850201","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/011/900/0/177850201.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/EWdIaK02NGh","width":507},{"collection":"blog","datetime":"2016-11-25T11:44:21.000+09:00","display_sitename":"Daum블로그","doc_url":"http://blog.daum.net/yeban4sea/4444","height":500,"image_url":"http://cfile238.uf.daum.net/image/260906495837A47739693A","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/EwjLNjVadk2","width":500},{"collection":"etc","datetime":"2017-10-23T18:59:11.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/attractive-senior-woman-with-red-apple/92407338","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/09/050/051/0/92407338.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/8ytR2mSf8DJ","width":506},{"collection":"etc","datetime":"2017-10-24T05:08:32.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/delicious-apple/491118286","height":351,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/757/252/0/491118286.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/KCLKAJc3RsD","width":494},{"collection":"etc","datetime":"2017-10-23T18:12:36.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/178085510","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/011/061/0/178085510.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/GPU1nvUBsmX","width":507},{"collection":"etc","datetime":"2017-10-23T19:45:04.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/half-red-apple/183992266","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/889/694/0/183992266.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/KKJEv0OPILc","width":509},{"collection":"etc","datetime":"2017-10-24T00:24:11.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-9/517172373","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/14/889/653/0/517172373.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/JpjrurPtSu","width":509},{"collection":"etc","datetime":"2017-10-24T02:08:50.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/isolated-green-apple/468407236","height":313,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/994/571/0/468407236.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/IPTaiyoVpav","width":548},{"collection":"etc","datetime":"2017-10-23T17:09:29.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/hand-with-apple/127011745","height":359,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/372/0/127011745.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/KAK56elWJ1f","width":478},{"collection":"etc","datetime":"2017-10-24T08:08:56.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-top-view/538455872","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/056/916/0/538455872.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/F9TId5mxnvO","width":509},{"collection":"etc","datetime":"2017-10-23T21:42:28.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/187332330","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/351/904/0/187332330.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/G2qCC3eWywV","width":509},{"collection":"etc","datetime":"2017-10-24T05:26:21.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-fruit/496773640","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/884/084/0/496773640.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/LICk3yuKOGt","width":508},{"collection":"etc","datetime":"2017-10-24T14:38:36.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/colorful-apple-slices/a10855346","height":372,"image_url":"http://imagescdn.gettyimagesbank.com/500/201706/a10855346.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/14jA4v3PhKO","width":500},{"collection":"etc","datetime":"2017-10-23T23:19:12.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/493918957","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/14/011/067/0/493918957.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/HdS1Kq6tQHK","width":507},{"collection":"etc","datetime":"2017-10-24T14:38:28.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-and-his-slice/a10851296","height":335,"image_url":"http://imagescdn.gettyimagesbank.com/500/201706/a10851296.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/HGNgctEP0AJ","width":500},{"collection":"etc","datetime":"2017-10-23T20:31:03.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/ripe-green-apple-with-cinnamon-sticks/178390960","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/12/515/106/0/178390960.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/LbNElhzBUg9","width":509},{"collection":"etc","datetime":"2017-10-24T02:26:39.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/stethoscope-with-apple/479838910","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/833/158/0/479838910.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/3yTZb4QNJkW","width":509},{"collection":"etc","datetime":"2017-10-24T05:00:44.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/492043446","height":359,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/310/013/0/492043446.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/CkorTDgwaN1","width":479},{"collection":"etc","datetime":"2017-10-24T14:27:10.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/stethoscope-and-apple/695652260","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/682/695/0/695652260.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/1efiaqFLzIK","width":509},{"collection":"etc","datetime":"2017-10-23T17:29:44.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/105550905","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/10/188/701/0/105550905.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/IPQ7S1vB9wX","width":506},{"collection":"etc","datetime":"2017-10-24T02:23:28.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-with-smile/478553226","height":416,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/869/221/0/478553226.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/AHtTYArBrvr","width":416},{"collection":"etc","datetime":"2017-10-23T23:19:31.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/493800595","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/14/011/533/0/493800595.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/6RXBYZODPa7","width":507},{"collection":"etc","datetime":"2017-10-23T18:14:00.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/unusual-striped-apple-sliced-into-segments/179550154","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/556/679/0/179550154.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/8HWZXvetxr1","width":507},{"collection":"etc","datetime":"2017-10-23T17:06:28.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/green-apple-on-a-saucer/126825037","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/461/0/126825037.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/KFZiY5Vfhjz","width":506},{"collection":"etc","datetime":"2017-10-24T05:02:55.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-fruit/493191700","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/884/928/0/493191700.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/IYiPrCukTZb","width":508},{"collection":"etc","datetime":"2017-10-23T16:48:47.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/95909854","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/10/243/981/0/95909854.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/HAbnskLLVwZ","width":507},{"collection":"etc","datetime":"2017-10-23T20:21:54.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/wet-apple/178734836","height":369,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/769/285/0/178734836.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/1EvbzjANzsy","width":465},{"collection":"etc","datetime":"2017-10-23T22:27:58.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-time-lapse/457458305","height":465,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/672/223/0/457458305.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/6KfImLiZLNu","width":368},{"collection":"etc","datetime":"2017-10-24T02:27:58.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/480452422","height":383,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/751/659/0/480452422.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/AH8eKLSwY5Z","width":450},{"collection":"etc","datetime":"2017-10-24T05:25:39.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-fruit/496609110","height":325,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/884/511/0/496609110.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/IB6PSt8exCE","width":532},{"collection":"etc","datetime":"2017-10-24T07:30:36.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/green-apple-background/522630182","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/677/552/0/522630182.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/LX24PgvZ7SB","width":509},{"collection":"etc","datetime":"2017-10-24T09:33:19.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-isolated-on-yellow-background/604925542","height":351,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/194/169/0/604925542.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/2cdOABdBSzA","width":494},{"collection":"etc","datetime":"2017-10-24T11:09:07.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-isolated-on-white/647824434","height":345,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/491/257/0/647824434.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/3pjiQw17UZs","width":500},{"collection":"etc","datetime":"2017-10-24T14:38:28.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-on-a-saucer/a10851293","height":335,"image_url":"http://imagescdn.gettyimagesbank.com/500/201706/a10851293.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/KLFGS0gvRhE","width":500},{"collection":"etc","datetime":"2018-02-21T10:01:57.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/handsome-man-eating-a-red-apple/917584226","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/18/855/050/0/917584226.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/AnH6Rqr6q","width":509},{"collection":"etc","datetime":"2019-08-07T12:05:00.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/girl-with-perfect-white-smile-holding-apple-on-yellow-background/1165263287","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/19/066/057/0/1165263287.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/J72iSanEsOy","width":509},{"collection":"etc","datetime":"2017-10-23T21:19:41.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/green-apple/156318230","height":412,"image_url":"http://imagescdn.gettyimagesbank.com/500/12/245/352/0/156318230.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/5frKSKmvgfo","width":416},{"collection":"etc","datetime":"2017-10-23T17:08:45.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/126511832","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/027/0/126511832.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/Ka1anvKAMDv","width":507},{"collection":"etc","datetime":"2017-10-23T17:30:22.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-and-cinnamon/119392683","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/10/033/876/0/119392683.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/GgLhOqH5ihY","width":507},{"collection":"etc","datetime":"2017-10-24T07:17:18.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-on-palm/509560026","height":343,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/327/066/0/509560026.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/4zncGdY5AwH","width":503},{"collection":"etc","datetime":"2017-10-24T10:26:05.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/636610552","height":356,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/296/320/0/636610552.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/54DDng5zpPA","width":485},{"collection":"etc","datetime":"2017-10-23T18:52:24.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/wet-apple/144222183","height":340,"image_url":"http://imagescdn.gettyimagesbank.com/500/07/750/130/0/144222183.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/7cYqzlsMwLV","width":504},{"collection":"etc","datetime":"2017-10-23T17:08:17.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-and-water-drops/126516870","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/021/0/126516870.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/5tWOM4nGlvJ","width":507},{"collection":"etc","datetime":"2017-10-23T22:12:46.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/459920599","height":414,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/845/420/0/459920599.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/Io1hqhbl5cc","width":414},{"collection":"etc","datetime":"2017-10-24T08:45:37.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/maÃa-apple/503228036","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/992/306/0/503228036.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/GTnN03t6A4Y","width":510},{"collection":"etc","datetime":"2017-10-23T18:03:00.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-and-green-apple/156712204","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/12/859/727/0/156712204.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/F8AX4fC7XF3","width":507},{"collection":"etc","datetime":"2017-10-23T17:37:35.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/hand-with-apple/153154729","height":478,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/998/245/0/153154729.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/EGKxawMrRz3","width":358},{"collection":"etc","datetime":"2017-10-23T17:11:34.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/girl-with-green-apple/126930748","height":464,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/995/0/126930748.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/7pB6aQcmto7","width":369},{"collection":"etc","datetime":"2021-11-05T14:00:44.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/diet-apple-and-meter/1351081817","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/21/551/617/0/1351081817.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/35YmvcLPafu","width":509},{"collection":"etc","datetime":"2017-10-23T18:10:51.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-green-drop-water/179244814","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/254/867/0/179244814.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/7Ru6WoFCvyK","width":507},{"collection":"etc","datetime":"2017-10-24T11:05:47.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-isolated-on-white/647661196","height":345,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/491/414/0/647661196.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/9iXTW98mCRs","width":500},{"collection":"etc","datetime":"2017-10-23T16:48:08.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/green-apple/176934551","height":366,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/308/321/0/176934551.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/KtU1OCB5X1s","width":467},{"collection":"etc","datetime":"2017-10-24T06:40:36.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-top-view/515075328","height":416,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/056/748/0/515075328.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/JwEg4aFzbmF","width":416},{"collection":"etc","datetime":"2017-10-24T11:59:22.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple-on-wooden-background/665705358","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/389/369/0/665705358.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/59wFuAJT1kx","width":509},{"collection":"etc","datetime":"2017-10-24T10:04:08.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/625299606","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/707/685/0/625299606.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/Ghe3DDHTGpx","width":509},{"collection":"etc","datetime":"2017-10-24T10:00:37.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-harvest/626648966","height":340,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/124/312/0/626648966.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/56lcGT1bWr0","width":507},{"collection":"blog","datetime":"2015-05-17T00:06:39.000+09:00","display_sitename":"Daum블로그","doc_url":"http://blog.daum.net/jjo5008/17455225","height":4456,"image_url":"http://cfile190.uf.daum.net/image/26435E33555590FD18D237","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/Ceu3KwtlYOM","width":4456},{"collection":"etc","datetime":"2017-10-23T23:12:11.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/488577139","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/14/011/380/0/488577139.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/J9sT0axXC0H","width":507},{"collection":"etc","datetime":"2017-10-24T13:20:58.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-on-black-background/520368656","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/717/574/0/520368656.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/BHIOna8VYpZ","width":508},{"collection":"etc","datetime":"2017-10-24T11:28:56.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-bite/641029518","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/874/445/0/641029518.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/AJjsrrgonHM","width":509},{"collection":"etc","datetime":"2017-10-24T14:38:26.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-and-his-slice/a10850100","height":335,"image_url":"http://imagescdn.gettyimagesbank.com/500/201706/a10850100.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/JDMU1qXNE91","width":500},{"collection":"etc","datetime":"2017-10-24T14:38:26.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/close-up-of-an-apple/a10849736","height":335,"image_url":"http://imagescdn.gettyimagesbank.com/500/201706/a10849736.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/8dfcRoS5hKG","width":500},{"collection":"etc","datetime":"2017-10-23T17:29:44.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple/177093814","height":359,"image_url":"http://imagescdn.gettyimagesbank.com/500/12/382/643/0/177093814.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/4exmymN76Qr","width":478},{"collection":"etc","datetime":"2017-10-24T05:48:10.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/organic-apple-fruit/502249900","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/884/787/0/502249900.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/y3xM3lgat7","width":508},{"collection":"etc","datetime":"2017-10-24T11:05:48.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-isolated-on-white/647660572","height":352,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/491/331/0/647660572.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/G9BDa4cg8me","width":490},{"collection":"etc","datetime":"2017-10-24T11:17:59.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-background-close-up/651457338","height":306,"image_url":"http://imagescdn.gettyimagesbank.com/500/17/845/495/0/651457338.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/498O6okyzkC","width":563},{"collection":"etc","datetime":"2017-10-23T17:08:35.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/127049462","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/114/198/0/127049462.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/LPLzWFmbeY1","width":506},{"collection":"etc","datetime":"2017-10-23T22:16:18.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/woman-smelling-apple/460158339","height":364,"image_url":"http://imagescdn.gettyimagesbank.com/500/13/307/777/0/460158339.jpg","thumbnail_url":"https://search4.kakaocdn.net/argon/130x130_85_c/8JmI60mrFMh","width":470},{"collection":"etc","datetime":"2017-10-23T18:11:23.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/red-apple/176778220","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/09/846/360/0/176778220.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/7NTqnqcpHU8","width":508},{"collection":"etc","datetime":"2017-10-24T01:08:06.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/fresh-red-apple-isolated/465157116","height":337,"image_url":"http://imagescdn.gettyimagesbank.com/500/15/439/027/0/465157116.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/2vfRg1TLz3s","width":508},{"collection":"etc","datetime":"2017-10-23T17:31:15.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/green-apple-and-its-slice/104659094","height":361,"image_url":"http://imagescdn.gettyimagesbank.com/500/10/995/210/0/104659094.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/LDVQKiExEe7","width":473},{"collection":"etc","datetime":"2017-10-24T00:35:22.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/yellow-green-and-red-apple/515145981","height":325,"image_url":"http://imagescdn.gettyimagesbank.com/500/14/948/910/0/515145981.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/3CcdUfLNINS","width":527},{"collection":"etc","datetime":"2017-10-24T08:35:33.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/toothbrush-and-green-apple-dental-care-concept/543475378","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/861/454/0/543475378.jpg","thumbnail_url":"https://search1.kakaocdn.net/argon/130x130_85_c/6iut8IpeYTF","width":508},{"collection":"etc","datetime":"2017-10-24T09:40:24.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/apple-front-of-blackboard/539335922","height":339,"image_url":"http://imagescdn.gettyimagesbank.com/500/16/494/822/0/539335922.jpg","thumbnail_url":"https://search2.kakaocdn.net/argon/130x130_85_c/EEF2MzDkyPY","width":509},{"collection":"etc","datetime":"2017-10-23T18:17:56.000+09:00","display_sitename":"게티이미지","doc_url":"http://www.gettyimagesbank.com/view/hand-is-giving-apple/134151646","height":338,"image_url":"http://imagescdn.gettyimagesbank.com/500/11/192/146/0/134151646.jpg","thumbnail_url":"https://search3.kakaocdn.net/argon/130x130_85_c/Jr066aqTqBJ","width":507}],"meta":{"is_end":false,"pageable_count":3948,"total_count":14177461}}
""";
