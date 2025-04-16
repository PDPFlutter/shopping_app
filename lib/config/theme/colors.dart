import 'dart:math';
import 'package:flutter/material.dart';

sealed class AppColors{
  static const blue = Color(0xff3d3dc1);
  static const textColor = Color(0xff161637);
  static const textColorLight = Color(0xff151581);
  static const backgroundColor = Color(0xfffce8da);
  
  static const _lightColors = [
    Color(0xFFDDFDD2),
    Color(0xFFDAE8FC),
    Color(0xFFF9E5BB),
    Color(0xFFE4F6F5),
    Color(0xFFFCE8DA),
    Color(0xFFEEDAFC),
  ];
  static  Color get randomLightColor {
    final seed = DateTime.now().microsecondsSinceEpoch;
    final random = Random(seed);
    return _lightColors[random.nextInt(_lightColors.length)];
  }
}