import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Fontstyle {
  static TextStyle bold32 = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight(700),
    color: Color(0xff090909),
  );
  static TextStyle bold24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight(700),
    color: Color(0xff090909),
  );
  static TextStyle bold20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight(700),
    color: Color(0xff090909),
  );
  static TextStyle bold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight(700),
    color: Color(0xff090909),
  );
  static TextStyle regular16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight(400),
    color: Color(0xff9F9F9F),
  );
  static TextStyle regular14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight(400),
    color: Color(0xff9F9F9F),
  );
  static TextStyle medium18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight(500),
    color: Color(0xffFFFFFF),
  );
  static TextStyle semiBold22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight(600),
    color: Colors.black,
  );
}

abstract class FontFamily {
  static String poppins = "Poppins";
}
