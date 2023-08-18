
import 'package:flutter/material.dart';
import 'package:netflix_api/core/constants.dart';
import 'package:netflix_api/view/home/widgets/home_main_card_buttons.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeoofwidth = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Feb',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[200]),
              ),
              const Text(
                '11',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
            height: 500,
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
                        'https://www.themoviedb.org/t/p/w1066_and_h600_bestv2/wRxLAw4l17LqiFcPLkobriPTZAw.jpg',
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
                const Row(
                  children: [
                    Text(
                      "SPY OPS",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
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
                const Text('Coming on 8 September',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    )),
                sizedHeight,
                const Text(
                  'Spy Ops',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                sizedHeight,
                const Text(
                  'Intelligence operatives from M16 to the CIA share insider stories of spy craft,Cold War campaigns, and coups carried out by convert agents.',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )),
      ],
    );
  }
}
