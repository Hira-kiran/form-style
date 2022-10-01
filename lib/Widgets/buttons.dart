// ignore_for_file: sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formstyle/Constants/colors.dart';
import '../Constants/textStyle.dart';

class Buttons extends StatelessWidget {
  String text;
  Buttons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        height: 40.h,
        width: 110.w,
        child: Center(
            child: Text(
          text,
          style: buttonTextStyle,
        )),
        decoration: BoxDecoration(
            color: blueColor, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
