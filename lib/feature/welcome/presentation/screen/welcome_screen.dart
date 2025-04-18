import 'package:flutter/material.dart';
import 'package:shopping_app/config/theme/theme.dart';
import 'package:shopping_app/core/presentation/components/background.dart';
import 'package:shopping_app/core/presentation/components/filled_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TODO: shu yerga ... qo'shish
            const Text(AppStrings.shopin, style: AppTextStyles.headlineLarge),
            const SizedBox(height: AppDimens.d64),
            const Text(AppStrings.amazing, style: AppTextStyles.headlineMedium),
            const SizedBox(height: AppDimens.d8),
            const Text(
              AppStrings.experience,
              style: AppTextStyles.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppDimens.d250),
            // FIXME: shuni tog'irlash kerak
            AppFilledButton(onPressed: () {}, title: AppStrings.explore),
          ],
        ),
      ),
    );
  }
}
