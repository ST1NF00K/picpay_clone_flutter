import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class InfoListItemWidget extends StatelessWidget {
  const InfoListItemWidget({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return _childWidget();
  }

  Widget _childWidget() {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1.2, color: PicPayColors.picpayLightGrey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          icon,
          const SizedBox(
            height: 11.0,
          ),
          title,
        ],
      ),
    );
  }
}
