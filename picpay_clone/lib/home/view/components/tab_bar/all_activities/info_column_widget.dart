import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/text/description_styles.dart';
import 'package:picpay_clone/shared/styles/text/title_styles.dart';

class InfoColumnWidget extends StatelessWidget {
  const InfoColumnWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.list,
  }) : super(key: key);

  final String title;
  final String description;
  final Widget list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 35.0,
            bottom: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: bigTitleText,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                description,
                style: mediumDescriptionText,
              ),
            ],
          ),
        ),
        list,
        const SizedBox(
          height: 30.0,
        ),
      ],
    );
  }
}
