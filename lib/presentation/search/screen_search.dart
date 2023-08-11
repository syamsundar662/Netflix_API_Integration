import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/presentation/search/widgets/screen_search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start   ,
          children: [
            CupertinoSearchTextField(
              backgroundColor: Colors.grey.withOpacity(.3),
              style: TextStyle(color: Colors.white),
            ) ,
            Expanded(child: ScreenSearchIdle()) 
          ],
        ),
      )),
          ); 
  }
} 