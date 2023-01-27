import 'package:advance_booking_app/Screen/main_screen.dart';
import 'package:advance_booking_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

import '../setting_screen/setting_screen.dart';



Column AdvanceBookingTap() {
  return Column(
    children: [
      DefaultTabController(
        length: 2,
        child: Column(
          children: [
            // 서브 탭바
            TabBar(
              unselectedLabelColor: Colors.black38,
              labelColor: Colors.black,
              indicator: BoxDecoration(
                color: Color(0xfff3d706)
              ),
              tabs: [
                Tab(text: '출시전 게임'),
                Tab(text: '출시후 게임'),
              ] ,
            ),

            // 이미지 컨테이너
            Container(
              width: double.infinity,
              height: 145,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                image: DecorationImage(
                  //fit: BoxFit.fill,
                  image: AssetImage('images/plithus.png')
                )
              ),
            ),

            Container(
              height: 385,
              width: 390,
              child: TabBarView(
                children: [
                // 출시전 게임 서브탭
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    ListViewButtons(text: '[Level infinite] Call Of Duty: Mobile',
                      image: Image.asset('images/callofduty.png', height: 60),
                      serveText: 'This is Call Of Duty', // size 150x150
                    ),
                  ],
                ),
                // 출시후 게임 서브탭
                Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    ListViewButtons(text: '[NEXON] FIFA ONLINE 4 M by EA SPORTS',
                      image: Image.asset('images/fifa.png', height: 60),
                      serveText: 'This is FIFA ONLINE',
                    ),
                    ],
                  ),
                ]
              ),
            )
          ],
        ),
      ),
    ],
  );
}

Column FavoritesTab(){
  return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        )
      ],
  );
}

Column MyPageTab(maincontext){
  return Column(
      children: [
        // SizedBox(
        //   height: 10,
        // ),

        Container(
          width: double.infinity,
          height: 120,
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('User Name',
                      style: TextStyle(
                      fontSize: 23
                      ),
                    ),
                    Text('User52000@email.com',
                      style: TextStyle(
                      fontSize: 14
                      ),
                    )
                  ],
                )
              ),
              IconButton(
                onPressed: (){
                  Navigator.push(
                    maincontext,
                    MaterialPageRoute(
                      builder: (maincontext) => const SettingTab()
                    )
                  );
                },
                icon: Icon(Icons.settings),
                iconSize: 23,
              )
            ],
          ),
        )
      ],
  );
}

class ListViewButtons extends StatelessWidget {

  final String text;
  final Image image;
  final String serveText;

  const ListViewButtons({
    super.key,
    required this.text,
    required this.image,
    required this.serveText
    });



  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 6
        )
      ),
      onPressed: (){},
      child: Row(
        children: [
          //  Image in OutlinedButton
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: image
            ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 10,
                bottom: 27
              ),

              // Texts in OutlinedButton
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text,
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),

                  SizedBox(
                    height: 4,
                  ),

                  Text(serveText,
                  style: TextStyle(
                    fontSize: 9,
                    color: Colors.black38
                  ),
                )
              ],
            ),
                  ),
          ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10
          ),
          child: TextButton(
            onPressed: (){},
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text('예약하기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
            ),
            style: TextButton.styleFrom(

              backgroundColor: Color(0xfff3d706),
              side: BorderSide(
                color: Color(0xfff3d706)
              )
            )
          ),
        )
      ],
    )
                    );
  }
}





// child: Row(
//   children: [
//     Image.asset('images/callofduty.png', height: 70),
//     Container(
//       margin: EdgeInsets.only(left: 20, bottom: 50),
//       child: Row(
//         children: [
//           Text(                // 게임이름 텍스트
//             'Call Of Duty (콜오브듀티)',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 15,
//               color: Colors.black
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(),
//             child: ElevatedButton(
//               onPressed: (){

//               } ,
//               child: Text('사전예약')),
//           )
//         ],
//       ),
//     )
//   ],
//   )