import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

TextStyle get mediumTitleText => TextStyle(
      color: PicPayColors.picPayMediumBlack,
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    );

TextStyle get bigSemiBoldText => TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
    );

TextStyle get bigTitleText => mediumTitleText.copyWith(
      fontSize: 22.sp,
    );
