import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

TextStyle get defaultHeaderText => TextStyle(
      color: PicPayColors.picpayWhite,
      fontSize: 16.sp,
    );

TextStyle get defaultHeaderTextBold =>
    defaultHeaderText.copyWith(fontWeight: FontWeight.bold);

TextStyle get defaultHeaderTextExtraBold =>
    defaultHeaderText.copyWith(fontWeight: FontWeight.w900);

TextStyle get smalldefaultHeaderText => defaultHeaderText.copyWith(
      fontSize: 11.sp,
    );
