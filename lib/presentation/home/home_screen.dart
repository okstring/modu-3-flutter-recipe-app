import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/components/f_input_field.dart';
import 'package:recipe_app/presentation/components/f_search_filter_button.dart';
import 'package:recipe_app/presentation/home/home_state.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class HomeScreen extends StatefulWidget {
  final HomeState state;
  final void Function() onSearchFieldTap;

  const HomeScreen({
    super.key,
    required this.state,
    required this.onSearchFieldTap,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: IntrinsicHeight(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Jega',
                          style: TextStyles.largeTextBold(
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'What are you cooking today?',
                          style: TextStyles.smallerTextRegular(
                            color: AppColors.gray3,
                          ),
                        ),
                      ],
                    ),

                    Spacer(),

                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.secondary40,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/profile_image.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: widget.onSearchFieldTap,
                        child: AbsorbPointer(
                          child: FInputField(
                            placeHolder: 'Search recipe',
                            value: '',
                            isVisibleSearchIcon: true,
                            onValueChange: (_) {},
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    FSearchFilterButton(voidCallback: () {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
