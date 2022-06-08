import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/app_bar_profile_leading_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class PicPayHomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PicPayHomeAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PicPayColors.PICPAY_PRIMARY_GREEN,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _leading(),
         const Spacer(),
          _trailing(),
        ],
      ),
    );
  }

  Widget _trailing() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 5.0),
      child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_outlined,
                color: PicPayColors.PICPAY_WHITE_FONT,
                size: 30.0,
              )),
    );
  }

  Widget _leading() {
    return const AppBarProfileLeadingWidget();
  }
}

