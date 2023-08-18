import 'package:flutter/material.dart';
import 'package:netflix_api/view/fast_laugh/widget/video_list_item.dart';
import 'package:netflix_api/view/home/screen_home.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: nowPlayingNotifiers,
          builder: (context, value, child) {
            return PageView.builder(
            itemBuilder: (context, index) {
              return VideoList(videoList: value[index]);
            },
            scrollDirection: Axis.vertical ,
            
            );
          },
          
        )
          ), 
          );
  }
}