import 'package:flutter/material.dart';

import '../../../config/theme/images.dart';

class Background extends StatelessWidget {
  final Widget child;
  /// bu ilovada asosiy oynaning backgraound qismini ko'rsatuvchi widget
  const Background({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AppImages.background,
        ),
      ),
      child: child,
    );
  }
}
