import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/view/downloads/widgets/center_cards.dart';

class Secition2 extends StatelessWidget {
   Secition2({super.key});
  final List image = [
    'https://www.themoviedb.org/t/p/w1280/2y48XTa483LRFIb5fDKOwr8DHWz.jpg',
    'https://www.themoviedb.org/t/p/w1280/4m1Au3YkjqsxF8iwQy0fPYSxE0h.jpg',
    'https://www.themoviedb.org/t/p/w1280/uS1AIL7I1Ycgs8PTfqUeN6jYNsQ.jpg'
  ];
 @override
  Widget build(BuildContext context) {
     final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23.2),
        ),
        sizedHeight ,
        const Text(
          "We will dowwnload a personalized selection of\nmovies and shows for you.So there's\n always something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.4,
                backgroundColor:  Colors.grey.withOpacity(.5),
              ),
              DownloadsCenterWidget(
                margin: const EdgeInsets.only(left: 170,top: 40 ),
                image: image[0],
                angle: 20,
                size: Size(size.width * .38, size.width * 0.55),
              ),
              DownloadsCenterWidget(
                  margin: const EdgeInsets.only(right: 170, top: 40),
                  image: image[1],
                  angle: -20,
                  size: Size(size.width * .38, size.width * 0.55)),
              DownloadsCenterWidget(
                  margin: const EdgeInsets.only(bottom: 20,top:  40),
                  image: image[2],
                  size: Size(size.width * .43, size.width * 0.58)),
            ],
          ),
        ),
],
    );
  }
}