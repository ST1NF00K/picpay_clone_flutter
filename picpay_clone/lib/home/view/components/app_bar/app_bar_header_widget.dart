import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class AppBarHeaderWidget extends StatelessWidget {
  const AppBarHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _profileButton(),
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

  InkResponse _profileButton() {
    return InkResponse(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CircleAvatar(),
            const SizedBox(width: 12.0),
            _usernameColumn(),
            const SizedBox(width: 5.0),
            const Icon(
              Icons.arrow_forward_ios,
              color: PicPayColors.PICPAY_WHITE_FONT,
              size: 18.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _usernameColumn() {
    TextStyle textStyle = const TextStyle(
      color: PicPayColors.PICPAY_WHITE_FONT,
      fontSize: 16.0,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Olá,", style: textStyle.copyWith(height: 1.5)),
        Text("@fluttershy",
            style: textStyle.copyWith(fontWeight: FontWeight.w900)),
      ],
    );
  }
}
