// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:formstyle/Constants/colors.dart';
import 'package:formstyle/Constants/textStyle.dart';

class TextFieldW extends StatelessWidget {
  const TextFieldW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        cursorColor: whiteColor,
        style: formFieldtextstyle,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5)),
            hintText: "Type here...",
            helperStyle: helperTextstyle,
            filled: true,
            fillColor: textFormFieldColor),
      ),
    );
  }
}
