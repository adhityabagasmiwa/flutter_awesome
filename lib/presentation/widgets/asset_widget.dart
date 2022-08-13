import 'package:flutter/cupertino.dart';
import 'package:flutter_awesome/presentation/misc/app_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TSImage {
  static Widget asset({
    required String assetName,
    double? width,
    double? height,
    Color? color,
    BoxFit? fit = BoxFit.contain,
  }) {
    return Image.asset(
      '${AppString.imgPath}$assetName',
      width: width,
      height: height,
      color: color,
      fit: fit,
    );
  }
}

class TSSvgPicture {
  static Widget asset({
    required String assetName,
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${AppString.svgPath}$assetName',
      width: width,
      height: height,
      color: color,
      semanticsLabel: 'Acme Logo',
    );
  }
}
