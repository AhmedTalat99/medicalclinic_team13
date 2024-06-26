import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget seeAllRow(String title, void Function()? onpress) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20.0.sp,
            color: Color(0xFF233B55),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Row(
        children: [
          Text(
            'See All',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20.0.sp,
              color: Color(0xFF233B55),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: onpress,
          ),
        ],
      ),
    ],
  );
}
