import 'package:flutter/material.dart';
import 'package:netflix_api/core/colors/colors.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          width: width.width * .8,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            onPressed: () {},
            color: Colors.blue,
            child: const Text(
              'Setup',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          onPressed: () {},
          color: Colors.white,
          child: const Text(
            'See what you can download',
            style: TextStyle(
                color: ktextcolor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ],
    );
  }
}
