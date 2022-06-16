import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class BalanceAndExtractWidget extends StatelessWidget {
  const BalanceAndExtractWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 18.w),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Saldo PicPay",
                  style: TextStyles.defaultText.copyWith(
                    fontSize: 17.sp,
                  )),
              _balanceWidget()
            ],
          ),
          const Spacer(),
          _extractButton(context)
        ],
      ),
    );
  }

  Widget _extractButton(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      height: 34.h,
      minWidth: 145.w,
      color: PicPayColors.PICPAY_BUTTON_MEDIUM_GREEN,
      onPressed: () {},
      child: Text(
        "Extrato",
        style: TextStyles.defaultText,
      ),
    );
  }

  Widget _balanceWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "R\$  ",
          style: TextStyles.bigSemiBoldText,
        ),
        Text(
          "2.300,85",
          style: TextStyles.bigSemiBoldText,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkResponse(
            onTap: () {},
            child: Icon(
              Icons.remove_red_eye_outlined,
              color: PicPayColors.PICPAY_WHITE_FONT,
              size: 27.sp,
            ),
          ),
        )
      ],
    );
  }
}
