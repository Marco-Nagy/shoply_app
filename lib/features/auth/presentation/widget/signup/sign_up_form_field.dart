import 'package:flutter/material.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/app_regex.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({super.key});

  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {


    return  Column(
      children: [
        CustomFadeInRight(
          duration: 400,
          child: AppTextFormField(
              controller: nameController,
              hintText: context.translate(LangKeys.fullName),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(emailController.text)) {
                  return context.translate(LangKeys.fullName);
                }
                return null;
              },),
        ),
        verticalSpacing(25),
        CustomFadeInLeft(
          duration: 400,
          child: AppTextFormField(
              controller: nameController,
              hintText: context.translate(LangKeys.email),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(emailController.text)) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },),
        ),
        verticalSpacing(25),
        CustomFadeInRight(
          duration: 400,
          child: AppTextFormField(
            controller: passwordController,
            hintText: context.translate(LangKeys.password),
            keyboardType: TextInputType.visiblePassword,
            obscureText: isShowPassword,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value.length < 6 ||
                  !AppRegex.isEmailValid(passwordController.text)) {
                return context.translate(LangKeys.validPasswrod);
              } else {
                return null;
              }
            },
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword =!isShowPassword;
                  });                },
                icon: Icon(
                  isShowPassword
                      ? Icons.visibility_rounded
                      : Icons.visibility_off_rounded,
                  color: context.colors.textColor,
                ),),
          ),
        ),
        verticalSpacing(10),
      ],
    );
  }
}
