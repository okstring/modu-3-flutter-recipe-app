import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/components/f_big_button.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              const SizedBox(height: 50),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Hello,',
                  style: TextStyles.headerTextBold(color: AppColors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Welcome Back!',
                  style: TextStyles.largeTextRegular(color: AppColors.black),
                ),
              ),
              SizedBox(height: 57),
              FInputField(
                label: 'Email',
                placeHolder: 'Enter Email',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 30),
              FInputField(
                label: 'Enter Password',
                placeHolder: 'Enter Password',
                value: '',
                isVisibleSearchIcon: false,
                height: 55,
                onValueChange: (_) {},
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyles.smallerTextRegular(
                      color: AppColors.secondary100,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(height: 25),
              FBigButton(text: 'Sign in', voidCallback: () {}),
              SizedBox(height: 20),
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

              SizedBox(height: 55),

              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style: TextStyles.smallerTextRegular(color: AppColors.black),
                    ),
                    SizedBox(width: 5,),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Text(
                        'Sign up',
                        style: TextStyles.smallerTextRegular(
                          color: AppColors.secondary100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 65),
            ],
          ),
        ),
      ),
    );
  }
}
