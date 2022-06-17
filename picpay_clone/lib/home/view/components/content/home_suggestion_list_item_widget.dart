import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class HomeSugestionListItemWidget extends StatelessWidget {
  const HomeSugestionListItemWidget({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: image,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: TextStyles.smallLabel,
        ),
      ],
    );
  }
}



