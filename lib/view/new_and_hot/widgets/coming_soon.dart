import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:netflix_api/core/api/api_key.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/model/home_trending.dart';
import 'package:netflix_api/view/home/widgets/home_main_card_buttons.dart';



class ComingSoonWidget extends StatelessWidget {
   ComingSoonWidget({
    super.key, required this.upcomingList,
  });
 
 final MovieDetails upcomingList;
 final DateFormat  dayFormat = DateFormat('EEEE');
 final DateFormat  monthFormat = DateFormat('MMM');
 final DateFormat  dateFormat = DateFormat('dd');


  @override
  Widget build(BuildContext context) {
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
                monthFormat.format(DateTime.parse(upcomingList.releaseDate)) ,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[200]),
              ),
                Text(
                dateFormat.format(DateTime.parse(upcomingList.releaseDate)) , 
                style: const TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
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
                              const TextStyle(fontWeight: FontWeight.bold, fontSize: 25,overflow: TextOverflow.ellipsis ),
                        ),
                      ),
                      const Spacer(),
                      const Row(
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
                 
                   Text('Coming On ${dayFormat.format(DateTime.parse(upcomingList.releaseDate))}' ,
                      style: const TextStyle( 
                        fontWeight: FontWeight.w500,
                      )),
                  sizedHeight,
                   Text(
                    upcomingList.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  sizedHeight,
                   Text(
                   upcomingList.overView,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              )),
        ),
      ],
    );


  
  }



}

