import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 5),
            child: Row(
              children: [
                //  Image.asset('assets/pngwing.com.png',scale: 12,),
                const Text(
                  'For Syam Sundar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const Spacer(),
                const Icon(Icons.cast),
                sizedWidth,
                Container(
                  height: 22,
                  width: 24,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png?20201013161117'))),
                ),
                sizedWidth
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('TV Shows'),
              Text('Movie'),
              Text('Categories'),
            ],
          )
        ],
      ),
    );
  }
}
