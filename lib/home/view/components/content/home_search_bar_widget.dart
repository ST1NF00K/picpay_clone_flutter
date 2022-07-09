import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/label_styles.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      margin: const EdgeInsets.only(top: 22, left: 18, right: 18, bottom: 25),
      width: 1.sw,
      height: 50.h,
      decoration: BoxDecoration(
        color: PicPayColors.picpayLightGrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: PicPayColors.picpayPrimaryGreen,
              size: 30.sp,
            ),
            hintText: ' O que você quer encontrar?',
            hintStyle: hintTextStyle,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
