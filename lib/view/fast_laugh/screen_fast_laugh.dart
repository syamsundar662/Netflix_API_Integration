import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/fast_laugh_video.dart';
import 'package:netflix_api/controller/notifiers/notifiers.dart';
import 'package:netflix_api/view/fast_laugh/widget/video_list_item.dart';

class ScreenFastLaugh extends StatefulWidget {
  const ScreenFastLaugh({super.key});

  @override
  State<ScreenFastLaugh> createState() => _ScreenFastLaughState();
}


class _ScreenFastLaughState extends State<ScreenFastLaugh> {
  
  late Future<List<String>> videoFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    videoFuture = FastLaughVideo().getFastLaughVideoUrls();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: FutureBuilder(
        future: videoFuture,
        builder: (
          context,
          value,
        ) {
          if (value.hasData) {
            return PageView.builder(
              itemCount: value.data!.length,
              itemBuilder: (context, index) { 
                fastLaughtVideoNotofier.value=value.data as List<String>;
                return VideoList(
                  videoList: fastLaughtVideoNotofier.value[index],
                  image: topRatedNotifier.value[index].backDropPath,
                );
              },
              scrollDirection: Axis.vertical,
            );
          }else if(value.connectionState ==ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);

          } 
          else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )),
    );
  }
}
