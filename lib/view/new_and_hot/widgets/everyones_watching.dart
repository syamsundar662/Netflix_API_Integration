import 'package:flutter/material.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/home_main_card_buttons.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    super.key, required this.everyonesWatchingList,
  });
  final MovieDetails everyonesWatchingList ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedHeight,
           Text(
            everyonesWatchingList.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          sizedHeight,
           Text(
            everyonesWatchingList.overView,
            style: const TextStyle(color: Colors.grey),
          ),
          sizedHeight,
          Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                 Constants.imagaPath+everyonesWatchingList.backDropPath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: CircleAvatar(
                    backgroundColor: Colors.black.withOpacity(.4),
                    radius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
          sizedHeight,
          const Row(
            children: [
              Spacer(),
              BottomBotton(
                  icon: Icon(Icons.share),
                  iconSize: 25,
                  textSize: 18,
                  title: 'Share'),
              sizedWidth,
              BottomBotton(
                  icon: Icon(Icons.add),
                  iconSize: 25,
                  textSize: 16,
                  title: 'My List'),
              sizedWidth,
              BottomBotton(
                icon: Icon(Icons.play_arrow_rounded),
                iconSize: 25,
                textSize: 16,
                title: 'Play',
              ),
              sizedWidth
            ],
          )
        ],
      ),
    );
  }
}
