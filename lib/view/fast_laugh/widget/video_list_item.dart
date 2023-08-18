import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/view/search/widgets/screen_search_idle.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
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
                      icon: const Icon(Icons.volume_off,color: Colors.white,),
                    )),
                     const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(image ),
                      ),
                      sizedHeight,
                      VideoActoins(icon: Icons.emoji_emotions, title: 'LOL'),
                      sizedHeight,
                      VideoActoins(icon: Icons.add, title: 'My Lisy'),
                      sizedHeight,
                      VideoActoins(icon: Icons.share, title: 'Share'),
                      sizedHeight,
                      VideoActoins(icon: Icons.play_arrow , title: ' Play'),
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
  const VideoActoins({super.key,required this.icon,required this.title });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Icon(icon),
          Text(title)
        ],
      ),
    );
  }
}