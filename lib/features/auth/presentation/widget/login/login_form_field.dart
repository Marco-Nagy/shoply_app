import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/app_regex.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';
import 'package:shoply/features/auth/presentation/bloc/auth_bloc.dart';

class LoginFormField extends StatefulWidget {
  const LoginFormField({super.key});

  @override
  State<LoginFormField> createState() => _LoginFormFieldState();
}

class _LoginFormFieldState extends State<LoginFormField> {
 late AuthBloc _auth_bloc;
  bool isShowPassword = false;
@override
  void initState() {
    super.initState();
    _auth_bloc = context.read<AuthBloc>();
  }
  @override
  void dispose() {
    super.dispose();
    _auth_bloc.emailController.dispose();
    _auth_bloc.passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _auth_bloc.formKye,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: AppTextFormField(
                controller: _auth_bloc.emailController,
                hintText: context.translate(LangKeys.email),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(_auth_bloc.emailController.text)) {
                    return context.translate(LangKeys.validEmail);
                  }
                  return null;
                },),
          ),
          verticalSpacing(25),
          CustomFadeInLeft(
            duration: 400,
            child: AppTextFormField(
              controller: _auth_bloc.passwordController,
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                return null;
              
                // if (value == null ||
                //     value.isEmpty ||
                //     value.length < 6 ||
                //     !AppRegex.isPasswordValid(_auth_bloc.passwordController.text)) {
                //   return context.translate(LangKeys.validPasswrod);
                // } else {
                //   return null;
                // }
              },
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isShowPassword =!isShowPassword;
                    });
                  },
                  icon: Icon(
                    isShowPassword
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    color: context.colors.textColor,
                  ),),
            ),
          ),
          verticalSpacing(10),
        ],
      ),
    );
  }
}
