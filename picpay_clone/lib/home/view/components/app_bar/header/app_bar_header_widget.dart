import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class AppBarHeaderWidget extends StatelessWidget {
  const AppBarHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 5.0),
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
    return Container(
      padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
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
            const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://secure.gravatar.com/avatar/c9459ebea7a219653b6d0d5997075b4d?s=256&d=mm&r=g",
              ),
            ),
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Olá,", style: TextStyles.defaultText.copyWith(height: 1.5)),
        Text("@fluttershy", style: TextStyles.defaultTextExtraBold),
      ],
    );
  }
}
