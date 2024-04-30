
import 'package:flutter/material.dart';
import 'package:guide/constants/colots.dart';


class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    // required this.keyboardType,
    // required this.controller,
    required this.labelText,
     this.prefixIcon,
    this.suffixIcon, 
    this.maxLines = 1, this.isObscureText, required this.validator, 
  });

 final bool ?isObscureText;
  // final TextEditingController? controller;
  // final TextInputType? keyboardType;
  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int maxLines;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return validator(value);
      },
      cursorHeight: 20,
      cursorColor: gray1,
      // controller: controller,
      // keyboardType: keyboardType,
    obscureText: isObscureText ?? false,
      decoration: InputDecoration(
         contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        labelText: labelText,
        labelStyle:   TextStyle(color: gray2.withOpacity(.5),fontSize: 12),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,       
        enabledBorder:  buildBorder(gray2.withOpacity(.2)),
        focusedBorder: buildBorder(green2.withOpacity(.2)),
        errorBorder:buildBorder(Colors.red.withOpacity(.5)),
          filled: true,
        fillColor: gray5.withOpacity(.5),
      ),
      maxLines: maxLines,
    );
  }
}
 OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(36),
        borderSide: BorderSide(
          width:1.3,
          
          color: color ?? gray1,

        ));
  }

