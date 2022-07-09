import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class RectangleIconWidget extends StatelessWidget {
  const RectangleIconWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 191, 198, 228),
          borderRadius: BorderRadius.circular(8.5),
          border: Border.all(width: 1.2, color: PicPayColors.picpayLightGrey)),
      child: SizedBox(
        height: 57,
        width: 57,
        child: image,
      ),
    );
  }
}
