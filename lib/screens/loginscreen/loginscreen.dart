import 'package:flutter/material.dart';
import 'package:healthwyze/theme/custom_text_style.dart';
import 'package:healthwyze/theme/theme_helper.dart';
import 'package:healthwyze/utils/size_utils.dart';
import 'package:healthwyze/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 198.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: CustomTextStyles.displayMedium40,
              ),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Username",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 7.v),
              CustomTextFormField(
                controller: userNameController,
              ),
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 10.v),
              CustomTextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                obscureText: true,
              ),
              Spacer(),
              Divider(
                endIndent: 11.h,
              ),
              SizedBox(height: 35.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Don’t have an account ? ",
                      style: CustomTextStyles.titleMediumff000000,
                    ),
                    TextSpan(
                      text: "Register",
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 27.v),
            ],
          ),
        ),
      ),
    );
  }
}
