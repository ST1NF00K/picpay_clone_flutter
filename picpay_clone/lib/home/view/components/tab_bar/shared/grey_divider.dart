import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class GreyDivider extends StatelessWidget {
  const GreyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      color: PicPayColors.picpayLightGrey,
    );
  }
}
