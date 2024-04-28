
import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.keyboardType,
    required this.controller,
    required this.labelText,
     this.prefixIcon,
    this.suffixIcon, this.passwordInvisible = false,
    this.maxLines = 1, this.onSaved, 
  });

 final bool passwordInvisible;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int maxLines;
    // final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       onSaved: onSaved,
      // validator: (val) {
      //         if (val == "") {
      //           return "can't be empty!";
      //         }
      //         return null;
      //       },
      cursorHeight: 20,
      cursorColor: gray1,
      controller: controller,
      keyboardType: keyboardType,
    obscureText: passwordInvisible,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle:  const TextStyle(color: gray2,fontSize: 14),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,       
        enabledBorder:  buildBorder(gray2.withOpacity(.5)),
        focusedBorder: buildBorder(green1),
          filled: true,
        fillColor: gray5,
      


      ),
      maxLines: maxLines,
    );
  }
}
 OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(36),
        borderSide: BorderSide(
          color: color ?? gray1,

        ));
  }

