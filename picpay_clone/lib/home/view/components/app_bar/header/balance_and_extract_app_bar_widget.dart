import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

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
          _extractButton()
        ],
      ),
    );
  }

  Widget _extractButton() {
    return FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)),
          height: 32.0,
          color: PicPayColors.PICPAY_BUTTON_MEDIUM_GREEN,
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.0),
            child: Text("Extrato",
                style: TextStyle(
                  color: PicPayColors.PICPAY_WHITE_FONT,
                  fontSize: 16.0,
                )),
          ),
        );
  }

  Widget _balanceWidget() {
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
