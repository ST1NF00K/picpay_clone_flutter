import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/app_bar/app_bar_header_widget.dart';
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
          BalanceAndExtractAppBarWidget()
        ],
      ),
    );
  }
}

class BalanceAndExtractAppBarWidget extends StatelessWidget {
  const BalanceAndExtractAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Saldo PicPay",
                  style: TextStyle(
                    color: PicPayColors.PICPAY_WHITE_FONT,
                    fontSize: 17.0,
                  )),
              _balanceWidget()
            ],
          ),
          const Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            height: 32.0,
            color: PicPayColors.PICPAY_BUTTON_MEDIUM_GREEN,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text("Extrato",
                  style: TextStyle(
                    color: PicPayColors.PICPAY_WHITE_FONT,
                    fontSize: 17.0,
                  )),
            ),
          )
        ],
      ),
    );
  }

  Row _balanceWidget() {
    const textStyle = TextStyle(
      color: PicPayColors.PICPAY_WHITE_FONT,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    );
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "R\$  ",
          style: textStyle,
        ),
        const Text(
          "2.300,85",
          style: textStyle,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: InkResponse(
            onTap: () {},
            child: const Icon(
              Icons.remove_red_eye_outlined,
              color: PicPayColors.PICPAY_WHITE_FONT,
              size: 27,
            ),
          ),
        )
      ],
    );
  }
}
