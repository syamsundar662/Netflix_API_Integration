import 'package:flutter/material.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    super.key, required this.movieDetails,
  });

  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: cardSize.width*.35,
        decoration:  BoxDecoration( 
          borderRadius: kradius, 
          image:  DecorationImage(image: NetworkImage(Constants.imagaPath+movieDetails.posterPath),fit: BoxFit.cover ) 
        ),
      ),
    );
  }
}