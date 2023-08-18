import 'package:flutter/material.dart';
import 'package:netflix_api/view/home/widgets/home_main_card_buttons.dart';
import 'package:netflix_api/view/search/widgets/screen_search_idle.dart';

class HomeMainCard extends StatelessWidget {
  const HomeMainCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 600,
          
          width: double.infinity, child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(image,fit: BoxFit.cover,),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BottomBotton(
                icon: Icon(Icons.add),
                title: 'My List',
              ),
              _playbutton(),
              const BottomBotton(
                icon: Icon(Icons.info_outline_rounded),
                title: '   Info   ',
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextButton _playbutton() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: Colors.black,
      ),
      label: const Text(
        'Play',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          )),
          backgroundColor: const MaterialStatePropertyAll(Colors.white)),
    );
  }
}
