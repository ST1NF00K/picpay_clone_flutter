import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class AppBarProfileLeadingWidget extends StatelessWidget {
  const AppBarProfileLeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Olá,",
          style: TextStyle(
            color: PicPayColors.PICPAY_WHITE_FONT,
            fontSize: 16.0,
            height: 1.5,
          ),
        ),
        Text(
          "@fluttershy",
          style: TextStyle(
            color: PicPayColors.PICPAY_WHITE_FONT,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
