import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../constants.dart';

class CustomTextField extends StatelessWidget {
String hintText;
IconData icon;
TextInputType? textInputType;
CustomTextField({required this.hintText,required this.icon,this.textInputType});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,



       cursorColor: kTextFieldBorder,
      decoration: InputDecoration(
        hintText: hintText.tr,
        hintStyle: TextStyle(color: kWritings,),
        prefixIcon: Icon(
          icon,
          color: kWritings,
        ),
        filled: true,
        fillColor: kTextFieldFill,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kTextFieldBorder,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(

              color: kTextFieldBorder,
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: kTextFieldBorder,
            )),
      ),
    );
  }
}
