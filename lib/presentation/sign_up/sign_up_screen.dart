import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/components/f_big_button.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Create an account',
                      style: TextStyles.largeTextBold(color: AppColors.black),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Let’s help you set up your account,\nit won’t take long.',
                      style: TextStyles.smallerTextRegular(
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              FInputField(
                label: 'Name',
                placeHolder: 'Enter Name',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 20),
              FInputField(
                label: 'Email',
                placeHolder: 'Enter Email',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 20),
              FInputField(
                label: 'Password',
                placeHolder: 'Enter Password',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 20),
              FInputField(
                label: 'Confirm Password',
                placeHolder: 'Retype Password',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 5),

              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    side: BorderSide(
                      color: AppColors.secondary100,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                  ),
                  Text(
                    'Accept terms & Condition',
                    style: TextStyles.smallerTextRegular(
                      color: AppColors.secondary100,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),

              SizedBox(height: 10),

              FBigButton(text: 'Sign in', voidCallback: () {}),
              SizedBox(height: 14),
              SizedBox(
                width: 195,
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(color: AppColors.gray4, thickness: 1.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        'Or Sign in With',
                        style: TextStyles.smallTextRegular(
                          color: AppColors.gray4,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: AppColors.gray4, thickness: 1.5),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.gray4,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),

                    child: Image.asset(
                      'assets/images/google.png',
                      width: 24,
                      height: 24,
                    ),
                  ),

                  SizedBox(width: 25),

                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.gray4,
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),

                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a member?',
                      style: TextStyles.smallerTextRegular(
                        color: AppColors.black,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyles.smallerTextRegular(
                          color: AppColors.secondary100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
