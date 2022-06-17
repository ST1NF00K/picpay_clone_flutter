import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class TextStyles {
  static TextStyle get defaultText => TextStyle(
        color: PicPayColors.PICPAY_WHITE_FONT,
        fontSize: 16.sp,
      );

  static TextStyle get defaultTextBold =>
      defaultText.copyWith(fontWeight: FontWeight.bold);

  static TextStyle get defaultTextExtraBold =>
      defaultText.copyWith(fontWeight: FontWeight.w900);

  static TextStyle get bigSemiBoldText => defaultText.copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get smallDefaultText => defaultText.copyWith(
        fontSize: 11.sp,
      );

  static TextStyle get hintTextStyle => const TextStyle(
        color: PicPayColors.PICPAY_GREY_FONT,
        fontSize: 18,
      );
}
