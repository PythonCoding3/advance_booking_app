import 'package:flutter/material.dart';

Container NickNameBar() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: 50,
      decoration: BoxDecoration(
            border: Border(bottom: BorderSide(
              color: Colors.black12
              ),
            ),
          ),
      child: InkWell(
        onTap: () {

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('닉네임',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87
              ),
            ),

            Text('이름',
              style: TextStyle(
                  fontSize: 13,
                color: Colors.black45
                ),
              ),
          ],
        ),
      ),
    );
  }