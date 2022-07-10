import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

TextStyle get smallLabel => const TextStyle(
      color: PicPayColors.picPayMediumBlack,
      fontSize: 14,
    );

TextStyle get tabLabel => const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
    );

TextStyle get boldGreyText => tabLabel.copyWith(
      color: PicPayColors.picpayGreyFont,
    );

TextStyle get smallLightGreyLabel => const TextStyle(
      color: PicPayColors.picpayMediumLight400Grey,
      fontSize: 13,
    );

TextStyle get hintTextStyle => const TextStyle(
      color: PicPayColors.picpayGreyFont,
      fontSize: 17,
    );
