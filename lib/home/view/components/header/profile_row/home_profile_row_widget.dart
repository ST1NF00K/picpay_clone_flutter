import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/header_styles.dart';

class HomeProfileRowWidget extends StatelessWidget {
  const HomeProfileRowWidget({
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
            CupertinoIcons.chat_bubble_2,
            color: PicPayColors.picpayWhite,
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
              backgroundImage: AssetImage(
                "assets/default-avatar.png",
              ),
            ),
            const SizedBox(width: 12.0),
            _usernameColumn(),
            const SizedBox(width: 5.0),
            const Icon(
              Icons.arrow_forward_ios,
              color: PicPayColors.picpayWhite,
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
        Text("Olá,", style: defaultHeaderText.copyWith(height: 1.5)),
        Text("@fluttershy", style: defaultHeaderTextExtraBold),
      ],
    );
  }
}
