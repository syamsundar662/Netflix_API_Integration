
import 'package:flutter/material.dart';
import 'package:netflix_api/core/Lists/months.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/home_main_card_buttons.dart';
import 'package:netflix_api/view/new_and_hot/widgets/everyones_watching.dart';


class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key, required this.upcomingList,
  });
 
 final MovieDetails upcomingList;

  @override
  Widget build(BuildContext context) {
List<String> date = upcomingList.releaseDate.split('-');
String onlydate =date[2];
 String month = date[1];

 
 
    final sizeoofwidth = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 420, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                month ,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[200]),
              ),
                Text(
                onlydate,
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
              // height: 450,
              width: sizeoofwidth.width - 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      
                      SizedBox(
                        height: 200,
                        width: double.infinity,
                        child: Image.network(
                          Constants.imagaPath+upcomingList.backDropPath,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(.4),
                            radius: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.volume_off,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                   Row(
                    children: [ 
                      SizedBox( 
                        width: 200 ,
                        child: Text(
                          upcomingList.title,
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 25,overflow: TextOverflow.ellipsis ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          BottomBotton(
                            icon: Icon(
                              Icons.notifications_none_sharp,
                            ),
                            iconSize: 25,
                            title: 'Remind Me',
                            textSize: 13,
                          ),
                          sizedWidth,
                          BottomBotton(
                            icon: Icon(
                              Icons.info_outline,
                              size: 1,
                            ),
                            title: 'Info',
                            textSize: 13,
                            iconSize: 25,
                          ),
                          sizedWidth,
                          sizedWidth
                        ],
                      )
                    ],  
                  ),
                   Text(upcomingList.releaseDate,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      )),
                  sizedHeight,
                   Text(
                    upcomingList.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  sizedHeight,
                   Text(
                   upcomingList.overView,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )),
        ),
      ],
    );


  
  }



}

