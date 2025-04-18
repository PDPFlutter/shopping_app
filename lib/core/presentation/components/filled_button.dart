import 'package:flutter/material.dart';
import 'package:shopping_app/config/theme/theme.dart';


class AppFilledButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  /**
      # hello world
      [AppFilledButton] - bu button ilovaning ko'p qismlarida
      ishlatiladi. ....
      .....
   **/
  const AppFilledButton({required this.onPressed, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimens.ph40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.blue,
          shape: const RoundedRectangleBorder(borderRadius: AppDimens.r8),
          minimumSize: const Size(double.maxFinite, AppDimens.d64),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppTextStyles.button,
        ),
      ),
    );
  }
}
