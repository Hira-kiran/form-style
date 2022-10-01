// ignore_for_file: sort_child_properties_last, file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formstyle/Widgets/textFormField.dart';
import 'package:formstyle/Constants/colors.dart';
import 'package:formstyle/Constants/textStyle.dart';
import 'package:formstyle/Screens/login.dart';
import 'package:get/get.dart';
import '../Widgets/buttons.dart';
import '../Constants/icons.dart';
import '../Functions/forLogin.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 140.h,
                width: 190.w,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 20),
                      child: InkWell(
                        onTap: () {
                          Get.to(const LoginScreen());
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
                        "Sign Up",
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
                padding: const EdgeInsets.only(top: 20),
                child: ClipPath(
                  clipper: SecondCustomShape(),
                  child: Container(
                    height: 648.h,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: darkBlueColor,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 285, left: 20, right: 20),
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 140),
                            child: Text(
                              "Email or phone number",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Padding(
                            padding: const EdgeInsets.only(right: 250, top: 15),
                            child: Text(
                              "Password",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Padding(
                            padding: const EdgeInsets.only(right: 190, top: 15),
                            child: Text(
                              "Confirm Password",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Padding(
                            padding: const EdgeInsets.only(right: 200, top: 15),
                            child: Text(
                              "Name or pseudo",
                              style: textFormFieldText,
                            ),
                          ),
                          const TextFieldW(),
                          Buttons(
                            text: "Sign Up",
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
