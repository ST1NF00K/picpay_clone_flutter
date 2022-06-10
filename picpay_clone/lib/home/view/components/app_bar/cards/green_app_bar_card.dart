import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class GreenAppBarCard extends StatelessWidget {
  const GreenAppBarCard({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 1.5,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(13.0)),
        color: PicPayColors.PICPAY_CARD_DARK_GREEN,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              icon,
              const SizedBox(
                height: 10.0,
              ),
              Text(" $title",
                  style: const TextStyle(
                    color: PicPayColors.PICPAY_WHITE_FONT,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
