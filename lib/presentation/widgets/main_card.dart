import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/presentation/search/widgets/screen_search_idle.dart';

class MainCards extends StatelessWidget {
  const MainCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: cardSize.width*.35,
        decoration:  BoxDecoration( 
          borderRadius: kradius,
          image: const DecorationImage(image: NetworkImage(image),fit: BoxFit.cover ) 
        ),
      ),
    );
  }
}