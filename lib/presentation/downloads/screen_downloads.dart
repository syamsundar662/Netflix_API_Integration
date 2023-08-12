import 'dart:math';
import 'package:flutter/material.dart';
import 'package:netflix_api/core/colors/colors.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList =[const _SmartDownloads(),Secition2(),const Section3()];

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(40), child: AppBarWidgets()),
      body: SafeArea(
          child: ListView.separated(itemBuilder:(context, index) =>  _widgetList[index], separatorBuilder: (context, index) => const SizedBox(height:25 ), itemCount: _widgetList.length)
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        sizedHeight,
        Row(
          children: [
            sizedWidth ,
            Icon(Icons.settings),
            Text('Smart Downloads'),
          ],

        ),
      ],
    );
    
  }
}
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
class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           
        SizedBox(
          width: double.infinity ,
          child: MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            child: const Text(
              'Setup',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.white,
          child: const Text(
            'See what you can download',
            style: TextStyle(
                color: ktextcolor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ],
    );
  }
}

class DownloadsCenterWidget extends StatelessWidget {
  const DownloadsCenterWidget(
      {super.key,
      required this.margin,
       this.angle = 0,
      required this.image,
      required this.size});

  final EdgeInsets margin;
  final double angle;
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          height: size.width*1.5,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
