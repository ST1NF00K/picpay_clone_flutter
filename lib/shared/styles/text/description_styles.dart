import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

TextStyle get homeCardActionDescription => const TextStyle(
      color: PicPayColors.picPayMediumBlack,
      fontSize: 16,
    );

TextStyle get boldMediumText => homeCardActionDescription.copyWith(
      fontWeight: FontWeight.bold,
    );

TextStyle get semiBoldMediumText => homeCardActionDescription.copyWith(
      fontWeight: FontWeight.w600,
    );

TextStyle get positiveMoneyValue => const TextStyle(
      color: PicPayColors.picpayLightGreen,
      fontSize: 13.5,
      fontWeight: FontWeight.w500,
    );

TextStyle get mediumDescriptionText => const TextStyle(
      color: PicPayColors.picPayMediumBlack,
      fontSize: 18,
    );
