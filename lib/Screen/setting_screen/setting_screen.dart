import 'package:advance_booking_app/Widget/setting/my_information/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Widget/setting/my_information/nickname.dart';
import '../../Widget/setting/support/inquiries.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('설정',
        style: TextStyle(
          fontSize: 21
          ),
        ),

        foregroundColor: Colors.black,
        backgroundColor: Color.fromRGBO(250, 250, 250, 0),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 35
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('내 정보',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                  ),
                ),

                NickNameBar(),
                AccountBar(),

                SizedBox(
                  height: 20,
                ),

                Text('고객 지원',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
                  ),
                ),

                InquiriesBar(),
                AccountBar(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}