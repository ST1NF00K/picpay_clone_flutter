import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class BottomNavBarMiddleButton extends StatelessWidget {
  const BottomNavBarMiddleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform.translate(
          offset: const Offset(0, -22),
          child: Container(
            alignment: Alignment.center,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: PicPayColors.PICPAY_PAY_BUTTON,
              border: Border.all(color: Colors.black12, width: 0.1),
            ),
            child: Icon(
              CupertinoIcons.money_dollar,
              size: 35.sp,
              color: PicPayColors.PICPAY_WHITE_FONT,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FittedBox(
                child: Text(
              "Pagar",
              style: TextStyles.smallDefaultText.copyWith(
                color: PicPayColors.PICPAY_GREY_FONT,
              ),
            )),
          ),
        )
      ],
    );
  }
}
