import 'package:flutter/material.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:stroke_text/stroke_text.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.upcome});
  final int index;

  final  MovieDetails upcome;
  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Container(
              width: cardSize.width * .35, 
              decoration: BoxDecoration(
                  borderRadius: kradius,
                   image:  DecorationImage(image: NetworkImage(Constants.imagaPath+upcome.posterPath),fit: BoxFit.cover ) 
                      ),
            ),
          ],
        ),
        Positioned(
          left: -4,
          bottom: -46,
          child: StrokeText(
            strokeWidth: 4,
            strokeColor: Colors.white,
            textColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 130,
              fontWeight: FontWeight.bold,
            ),
            text: "${index + 1}",
          ),
        )],
    );
  }
}
