import 'package:flutter/material.dart';
import 'package:netflix_api/controller/api_integration/now_playing.dart';
import 'package:netflix_api/controller/notifiers/notifiers.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
class VideoList extends StatelessWidget {
  const VideoList({super.key, required this.videoList});
  
  final MovieDetails videoList;

  getdata()async{
     nowPlayingNotifiers.value = await NowPlaying().getALLNowPlaying();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration:BoxDecoration(
            image: DecorationImage(image: NetworkImage(Constants.imagaPath+videoList.posterPath,),fit:BoxFit.cover )
          ) ,
         
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
                      Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar( 
                        radius: 25,
                        backgroundImage: NetworkImage(Constants.imagaPath+videoList.posterPath),
                      ),
                      sizedHeight,
                      const VideoActoins(icon: Icons.emoji_emotions, title: 'LOL'),
                      sizedHeight,
                      const VideoActoins(icon: Icons.add, title: 'My Lisy'),
                      sizedHeight,
                      const VideoActoins(icon: Icons.share, title: 'Share'),
                      sizedHeight,
                      const VideoActoins(icon: Icons.play_arrow , title: ' Play'),
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