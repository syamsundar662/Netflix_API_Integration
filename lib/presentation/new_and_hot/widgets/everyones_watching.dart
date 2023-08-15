import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/home/widgets/home_main_card_buttons.dart';

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedHeight,
          const Text(
            'Spy Ops',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
          sizedHeight,
          const Text(
            'Intelligence operatives from M16 to the CIA share insider stories of spy craft,Cold War campaigns, and coups carried out by convert agents.',
            style: TextStyle(color: Colors.grey),
          ),
          Stack(
            children: [
              SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wRxLAw4l17LqiFcPLkobriPTZAw.jpg',
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
                  textSize: 18,
                  title: 'My List'),
              sizedWidth,
              BottomBotton(
                icon: Icon(Icons.play_arrow_rounded),
                iconSize: 25,
                textSize: 18,
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