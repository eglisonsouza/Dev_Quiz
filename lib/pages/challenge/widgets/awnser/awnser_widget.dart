import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class AwnserWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  const AwnserWidget(
      {Key? key,
      required this.title,
      this.isRight = false,
      this.isSelected = false})
      : super(key: key);

  Color get _selectedColorRigth => isRight ? AppColors.darkGreen : AppColors.lightRed;
  Color get _selectedBorderRigth => isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedColorCardRigth => isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedBorderCardRigth => isRight ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyleRigth => isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIconRigth => isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: isSelected ? _selectedColorCardRigth : AppColors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: isSelected ? _selectedBorderCardRigth: AppColors.border)),
          ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Text(
              title,
              style: isSelected ? _selectedTextStyleRigth : AppTextStyles.body,
            )),
            Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                  color: isSelected ? _selectedColorRigth : AppColors.darkGreen,
                  borderRadius: BorderRadius.circular(500),
                  border: Border.fromBorderSide(
                      BorderSide(color: isSelected ? _selectedBorderRigth : AppColors.border))),
              child: isSelected ? Icon(
                _selectedIconRigth,
                size: 16,
                color: AppColors.white,
              ): null,
            )
          ],
        ),
      ),
    );
  }
}
