/// Vector for svg image
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Vector extends SvgPicture {
  Vector(
    String? assetName, {
    Key? key,
    // height double
    double? size = 35.0,
    ColorFilter? colorFilter,
    Color? color,
  }) : super.asset(
          assetName!,
          key: key,
          height: size,
          // colorFilter: colorFilter,
          colorFilter: colorFilter ??
              (color != null ? ColorFilter.mode(color, BlendMode.srcIn) : null),
        );
}

class Vectors {
  static const coffeeCups = "assets/svgs/coffee_cups.svg";
}
