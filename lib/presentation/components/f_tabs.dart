import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FTabs extends StatefulWidget {
  final List<String> labels;

  final void Function(int) onValueChange;

  const FTabs({super.key, required this.labels, required this.onValueChange});

  @override
  State<FTabs> createState() => _FTabsState();
}

class _FTabsState extends State<FTabs> {
  List<int> get labelsIndices => List.generate(widget.labels.length, (index) => index);
  int _selectedIndex = 0;

  void changeSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      padding: const EdgeInsets.symmetric(vertical: 12),
      color: AppColors.white,
      child: Row(
        children:
            labelsIndices.map((index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    changeSelectedIndex(index);
                    widget.onValueChange(index);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                      _selectedIndex == index
                              ? AppColors.primary100
                              : AppColors.white,
                    ),
                    alignment: Alignment.center,
                    height: 33,
                    child: Text(
                      widget.labels[index],
                      style: TextStyles.smallerTextBold(
                        color: _selectedIndex == index ? AppColors.white : AppColors.primary80,
                      ),
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
