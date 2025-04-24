import 'package:flutter/material.dart';
import 'package:recipe_app/ui/color_styles.dart';
import 'package:recipe_app/ui/text_styles.dart';

class FRatingDialog extends StatefulWidget {
  final Function(int) onRatingSelected;

  const FRatingDialog({super.key, required this.onRatingSelected});

  @override
  State<FRatingDialog> createState() => _FRatingDialogState();
}

class _FRatingDialogState extends State<FRatingDialog> {
  int _selectedRating = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.zero,
      child: UnconstrainedBox(
        child: Container(
          width: 170,
          height: 91,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 4),
              Text(
                'Rate recipe',
                style: TextStyles.smallerTextRegular(
                  color: AppColors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedRating = index + 1;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Icon(
                        index < _selectedRating
                            ? Icons.star
                            : Icons.star_border,
                        color: AppColors.rating,
                        size: 20,
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: 3),
              Container(
                height: 20,
                width: 61,
                margin: EdgeInsets.only(bottom: 8),
                child: ElevatedButton(
                  onPressed:
                  _selectedRating > 0
                      ? () {
                    widget.onRatingSelected(_selectedRating);
                    Navigator.of(context).pop();
                  }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    _selectedRating > 0
                        ? AppColors.rating
                        : AppColors.gray4,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  child: Text(
                    'Send',
                    style: TextStyles.smallerTextRegular(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}