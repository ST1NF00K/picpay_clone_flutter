import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/app_bar/cards/app_bar_horizontal_list.dart';
import 'package:picpay_clone/home/view/components/app_bar/header/app_bar_header_widget.dart';
import 'package:picpay_clone/home/view/components/app_bar/header/balance_and_extract_app_bar_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class PicPayHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PicPayHomeAppBar({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PicPayColors.PICPAY_PRIMARY_GREEN,
      child: Column(
        children: const [
          AppBarHeaderWidget(),
          Divider(
            height: 2,
            thickness: 1,
            indent: 20.0,
            endIndent: 20.0,
          ),
          BalanceAndExtractAppBarWidget(),
          AppBarHorizontalList(),
        ],
      ),
    );
  }
}

