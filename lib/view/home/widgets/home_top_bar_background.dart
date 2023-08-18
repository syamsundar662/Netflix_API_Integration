import 'package:flutter/material.dart';
import 'package:netflix_api/view/home/screen_home.dart';
import 'package:netflix_api/view/home/widgets/home_top_bar.dart';

class HomeTopBarBackground extends StatelessWidget {
  const HomeTopBarBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: scrollNotifier.value ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          clipBehavior: Clip.antiAlias,
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.black.withOpacity(1),
                Colors.black.withOpacity(.2),
              ],
              stops: const [
                0,
                1,
              ],
            ),
          ),
          child: const HomeTopBar(),
        ),
      );
  }
}

