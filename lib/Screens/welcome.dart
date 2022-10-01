// ignore_for_file: sort_child_properties_last

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formstyle/Constants/colors.dart';
import 'package:formstyle/Screens/login.dart';
import 'package:formstyle/Screens/signUp.dart';
import 'package:get/get.dart';
import '../Widgets/buttons.dart';
import '../Functions/forLogin.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: ListView(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                    height: 430.h,
                    width: double.infinity,
                    color: offWhiteColor),
              ),
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 60),
                      child: Image(
                        image: const AssetImage(
                          "images/logo.png",
                        ),
                        height: 50.h,
                        width: 50.w,
                      ),
                    ),
                    height: 330.h,
                    width: double.infinity,
                    color: imageBackColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 463),
                child: ClipPath(
                  clipper: SecondCustomShape(),
                  child: Container(
                    height: 270.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: darkBlueColor,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 120, left: 30, right: 30),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const LoginScreen());
                            },
                            child: Buttons(
                              text: "Log In",
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const SignUpScreen());
                            },
                            child: Buttons(
                              text: "Sign Up",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
