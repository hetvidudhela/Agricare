import 'package:demo/utils/constans/colors.dart';
import 'package:flutter/material.dart';

class TShadowStyle {
  static final verticalproductShadow = BoxShadow(
    color: TColors.darkGray.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalproductShadow = BoxShadow(
    color: TColors.darkGray.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
