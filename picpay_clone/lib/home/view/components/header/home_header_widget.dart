import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/header/cards/home_header_horizontal_list_widget.dart';
import 'package:picpay_clone/home/view/components/header/profile_row/balance_and_extract_widget.dart';
import 'package:picpay_clone/home/view/components/header/profile_row/home_profile_row_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      color: PicPayColors.picpayPrimaryGreen,
      child: Column(
        children: const [
          HomeProfileRowWidget(),
          Divider(
            height: 2,
            thickness: 1,
            indent: 20.0,
            endIndent: 20.0,
          ),
          BalanceAndExtractWidget(),
          HomeHeaderHorizontalListWidget(),
        ],
      ),
    );
  }
}
