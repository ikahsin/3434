
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('PisyatVtorie'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget{
  final List<String> ImageUrls = [
'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786652_83141802c768a66bee751887c.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786672_d3c8a84c7a371b11879943bbd.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786692_1b2ed99411219d0700cdc78e8.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786702_4d2eaf2687ef5dfbfa7b38498.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786682_70f377f997cab99a559d25f40.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786712_10db6a940bfaaff6760227108.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786722_95174dbc8babfd6872a4a3a90.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786732_31de005eaec2222b5dcbd0bed.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786742_4595e8d04e5287300cb47fb30.jpeg',
    'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786752_f5f9d59907b9856b4b26c7561.jpeg',
  ];

  final List<String> textContent = [
    'iPhone 1',
        'iPhone 3G',
        'iPhone 3GS',
        'iPhone 4',
        'iPhone 4s',
        'iPhone 5',
        'iPhone 5c',
        'iPhone 5S',
        'iPhone 6 / 6 Plus',
        'iPhone SE',
        '',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          final imageUrl = ImageUrls[index % ImageUrls.length];
          final text = textContent[index % textContent.length];

          return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.network(
                    imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          );

        },
      ),
    );
  }

}