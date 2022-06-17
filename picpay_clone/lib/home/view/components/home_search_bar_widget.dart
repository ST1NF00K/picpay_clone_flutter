import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class HomeSearchBarWidget extends StatelessWidget {
  const HomeSearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0),
      margin: const EdgeInsets.all(22.0),
      width: 1.sw,
      height: 50.h,
      decoration: BoxDecoration(
        color: PicPayColors.PICPAY_LIGHT_GREY,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: TextField(
          maxLines: 1,
          decoration: InputDecoration(
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: PicPayColors.PICPAY_PRIMARY_GREEN,
              size: 30.sp,
            ),
            hintText: ' O que você quer encontrar?',
            hintStyle: TextStyles.hintTextStyle,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
