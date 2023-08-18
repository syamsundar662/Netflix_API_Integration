
import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsCenterWidget extends StatelessWidget {
  const DownloadsCenterWidget(
      {super.key,
      required this.margin,
       this.angle = 0,
      required this.image,
      required this.size});

  final EdgeInsets margin;
  final double angle;
  final String image;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          height: size.width*1.5,
          width: size.width,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
      ),
    );
  }
}
