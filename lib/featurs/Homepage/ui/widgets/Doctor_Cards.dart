import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/featurs/setting/screen/privacy.dart';

Widget card_Doctor() {
  return ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Container(
          width: MediaQuery.of(context).size.width / 1.2,
          // height: MediaQuery.of(context).size.height / 1.2,
          margin: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => privacy()),
              );
            },
            child: Container(
              // Adjust height as needed
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.30,
                    height: MediaQuery.of(context).size.height / 5,
                    child: Stack(children: [
                      Positioned(
                        top: 15,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.30,
                          height: MediaQuery.of(context).size.height / 5,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/sara.png'), // Replace 'your_image.png' with your actual image path
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 50,
                        right: MediaQuery.of(context).size.width / 70,
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite,
                            size: 35.sp,
                            color: AppColors.primary,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height / 8,
                        left: MediaQuery.of(context).size.width / 40,
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                            color: AppColors
                                .primary, // Placeholder color, you can remove this line or change to your desired color
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                  width: 8.0), // Gap between icon and text
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.white, // Text color
                                  fontSize:
                                      16.0.sp, // Adjust font size as needed
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Align(
                    alignment: const Alignment(-0.8, -0.1),
                    child: Container(
                      child: Text(
                        "Dr sara selem",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.8, -0.1),
                    child: Container(
                      child: Text(
                        '12 experence',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16.sp,
                            color: AppColors.third,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.8, -0.1),
                    child: Container(
                      child: Text(
                        '20 Dollar',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(-0.8, -0.1),
                    child: Container(
                        child: Text(
                      'know more ...',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: AppColors.third,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            ),
          )));
}
