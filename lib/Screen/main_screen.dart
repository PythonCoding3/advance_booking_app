import 'package:advance_booking_app/Screen/Tabs/serveTabs.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String result = '';
  static bool isMetric = true;
  bool isImperial = false;
  bool isLike = false;
  bool beforeGame = false;
  bool afterGame = false;
  late List<bool> isSelected;
  late List<bool> isSelected2;
  @override
  void initState() {
    isSelected = [isMetric, isImperial, isLike];
    isSelected2 = [beforeGame, afterGame];
    super.initState();
  }

  @override
  Widget build(BuildContext maincontext) {

    return MaterialApp(
      home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xff121212),
                title: Text('plithus'),//Image.asset('images/font.png', height: 130,),
                centerTitle: true,
                toolbarHeight: 55,
                elevation: 0,
                ),
                bottomNavigationBar: BottomAppBar(
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black38,
                    indicatorColor: Colors.transparent,
                    tabs: [
                    Tab(text: '사전등록'),
                    Tab(text: '즐겨찾기'),
                    Tab(text: 'MyPage'),
                  ]
                )
              ),

                drawer: Drawer(

                ),

                body: TabBarView(
                  children: [

                    AdvanceBookingTap(),
                    FavoritesTab(),
                    MyPageTab(maincontext),
                  ],
                )
              ),
          )
      );
}
  void toggleSelect(value) {
    if (value == 0) {
      isMetric = true;
      isImperial = false;
      isLike = false;
    }
    else if (value == 1) {
      isMetric = false;
      isImperial = true;
      isLike = false;
    }
    else if (value ==2){
      isMetric = false;
      isImperial = false;
      isLike = true;
    }
    setState(() {
      isSelected = [isMetric, isImperial, isLike];

      }
    );
  }

  void toggleSelect2(value){
    if (value == 0){
      beforeGame = true;
      afterGame = false;
    }
    else{
      beforeGame = false;
      afterGame = true;
    }
  }
}



