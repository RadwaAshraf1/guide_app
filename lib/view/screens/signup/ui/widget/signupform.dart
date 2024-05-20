import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guide/constants/colots.dart';
import 'package:guide/helper/app_regrex.dart';
import 'package:guide/view/screens/login/ui/widgets/passwordvalidation.dart';
import 'package:guide/view/screens/signup/logic/sign_up_cubit.dart';
import 'package:guide/view/widgets/customtextformfield.dart';


class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<SignupCubit>().passwordController;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          // AppTextFormField(
          //   hintText: 'Name',
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Please enter a valid name';
          //     }
          //   },
          //   controller: context.read<SignupCubit>().nameController,
          // ),
          // verticalSpace(18),
          // CTextFormField(
          //   hintText: 'Phone number',
          //   validator: (value) {
          //     if (value == null ||
          //         value.isEmpty ||
          //         !AppRegex.isPhoneNumberValid(value)) {
          //       return 'Please enter a valid phone number';
          //     }
          //   },
            // controller: context.read<SignupCubit>().phoneController,
          // ),
         SizedBox(height: 18),
          CustomTextFormField(
            labelText: 'Email',
            prefixIcon: const Icon(
                  Icons.mail,
                  color: gray2,
                ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<SignupCubit>().emailController,
          ),
          SizedBox(height: 18,),
          CustomTextFormField(
            controller: context.read<SignupCubit>().passwordController,
            labelText: 'Password',
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,color: gray2
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
            prefixIcon: const Icon(
                  Icons.lock,
                  color: gray2,
                ),
          ),
          const SizedBox(height: 18),
          CustomTextFormField(
            controller:
                context.read<SignupCubit>().passwordConfirmationController,
            labelText: 'Password Confirmation',
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility, color: gray2,
              ),
            ),
            prefixIcon: const Icon(
                  Icons.lock,
                  color: gray2,
                ),
               
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          SizedBox(height: 14),
          PasswordValidations(
            hasLowerCase: hasLowercase,
            hasUpperCase: hasUppercase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
   ],
    ));
    
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}