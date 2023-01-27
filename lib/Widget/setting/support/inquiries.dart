import 'package:flutter/material.dart';

Container InquiriesBar() {
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
            Row(
              children: [
                Icon(Icons.question_mark_rounded,
                  size: 19,
                ),

                SizedBox(
                  width: 7,
                ),

                Text('1:1 문의',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87
                    ),
                  ),
              ],
            ),



            Icon(Icons.keyboard_arrow_right,
            color: Colors.black26
            ),
          ],
        ),
      ),
    );
  }