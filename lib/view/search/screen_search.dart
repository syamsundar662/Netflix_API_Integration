import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_api/view/search/widgets/screen_search_idle.dart';
import 'package:netflix_api/view/search/widgets/search_result.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}
  //  bool tap = false ; 

class _ScreenSearchState extends State<ScreenSearch> {
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
              style: const TextStyle(color: Colors.white),
            ) ,
          //  Expanded (child: const ScreenSearchIdle())  
            const Expanded (child: SearchResult()) 
          ],
        ), 
      )),
          ); 
  }
} 