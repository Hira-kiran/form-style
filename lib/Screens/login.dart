// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formstyle/Widgets/textFormField.dart';
import 'package:formstyle/Constants/colors.dart';
import 'package:formstyle/Constants/textStyle.dart';
import 'package:formstyle/Screens/welcome.dart';
import 'package:get/get.dart';
import '../Widgets/buttons.dart';
import '../Constants/icons.dart';
import '../Functions/forLogin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    height: 330.h,
                    width: double.infinity,
                    color: offWhiteColor),
              ),
              ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                    child: const Padding(
                      padding: EdgeInsets.only(left: 300, bottom: 80),
                      child: addCircleIcon,
                    ),
                    height: 250.h,
                    width: double.infinity,
                    color: whiteColor),
              ),
              Container(
                height: 140.h,
                width: 190.w,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(const WelcomeScreen());
                        },
                        child: Row(
                          children: [
                            arrowBack,
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Back",
                              style: backtextStyle,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90, top: 20),
                      child: Text(
                        "Log In",
                        style: loginSignuptextStyle,
                      ),
                    ),
                  ],
                ),
                decoration: const BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(170),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 270),
                child: ClipPath(
                  clipper: SecondCustomShape(),
                  child: Container(
                    height: 434.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: darkBlueColor,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 220, left: 30, right: 30),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 150),
                            child: Text(
                              "Email or phone number",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Padding(
                            padding: const EdgeInsets.only(right: 240, top: 15),
                            child: Text(
                              "Password",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Buttons(
                            text: "Log In",
                          )
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
