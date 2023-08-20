import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:video_player/video_player.dart';

class VideoList extends StatefulWidget {
  const VideoList({super.key, required this.videoList, required this.image});

  final String videoList;
  final String image;

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoList))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.4),
                    radius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: Colors.white,
                      ),
                    )),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      // backgroundImage: NetworkImage(Constants.imagaPath+videoList.posterPath),
                      backgroundColor: Colors.amber,
                    ),
                    sizedHeight,
                    VideoActoins(
                        icon: Icons.emoji_emotions, title: 'LOL'),
                    sizedHeight,
                    VideoActoins(icon: Icons.add, title: 'My Lisy'),
                    sizedHeight,
                    VideoActoins(icon: Icons.share, title: 'Share'),
                    sizedHeight,
                    VideoActoins(icon: Icons.play_arrow, title: ' Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActoins extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActoins({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [Icon(icon), Text(title)],
      ),
    );
  }
}
