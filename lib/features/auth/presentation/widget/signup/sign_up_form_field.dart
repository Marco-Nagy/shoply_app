import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoply/core/helpers/extension/my_context.dart';
import 'package:shoply/core/localization/lang_keys.dart';
import 'package:shoply/core/utils/animations/animate_do.dart';
import 'package:shoply/core/utils/app_regex.dart';
import 'package:shoply/core/utils/screens/app_text_form_field.dart';
import 'package:shoply/core/utils/widgets/spacing.dart';

import '../../bloc/auth_bloc.dart';

class SignUpFormField extends StatefulWidget {
  const SignUpFormField({super.key});

  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  bool isShowPassword = false;

  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = context.read<AuthBloc>();
  }

  @override
  void dispose() {
    super.dispose();
    // _authBloc.emailController.dispose();
    // _authBloc.passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _authBloc.formKye,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 400,
            child: AppTextFormField(
              controller: _authBloc.nameController,
              hintText: context.translate(LangKeys.fullName),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ) {
                  return context.translate(LangKeys.validName);
                } else {
                  return null;
                }
              },

            ),
          ),
          verticalSpacing(15),
          CustomFadeInLeft(
            duration: 400,
            child: AppTextFormField(
              controller: _authBloc.emailController,
              hintText: context.translate(LangKeys.email),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(_authBloc.emailController.text)) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          verticalSpacing(15),
          CustomFadeInRight(
            duration: 400,
            child: AppTextFormField(
              controller: _authBloc.passwordController,
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              obscureText: isShowPassword,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    value.length < 6
                    // ||
                    // !AppRegex.isPasswordValid(
                    //     _authBloc.passwordController.text
                    // )
                  ) {
                  return context.translate(LangKeys.validPasswrod);
                } else {
                  return null;
                }
              },
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                  color: context.colors.textColor,
                ),
              ),
            ),
          ),
          verticalSpacing(15),
        ],
      ),
    );
  }
}
