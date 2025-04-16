import 'package:flutter/material.dart';

sealed class AppDimens {
  // size:
  static const d4 = 4.0;
  static const d8 = 8.0;
  static const d12 = 12.0;
  static const d16 = 16.0;
  static const d20 = 20.0;
  static const d24 = 24.0;
  static const d30 = 30.0;
  static const d32 = 32.0;
  static const d36 = 36.0;
  static const d40 = 40.0;
  static const d64 = 64.0;
  static const d80 = 80.0;
  static const d100 = 100.0;
  static const d160 = 160.0;
  static const d200 = 200.0;
  static const d250 = 250.0;

  // radius:
  static const r8 = BorderRadius.all(Radius.circular(d8));
  static const r12 = BorderRadius.all(Radius.circular(d12));

  // padding:
  static const ph40 = EdgeInsets.symmetric(horizontal: d40);
}
