import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class HomeEventCard extends StatelessWidget {
  const HomeEventCard({
    Key? key,
    required this.image,
    required this.actionText,
    required this.value,
    required this.isNegative,
    required this.dateAgo,
    required this.commentsNumber,
    required this.likesNumber,
  }) : super(key: key);

  final ImageProvider<Object> image;
  final Widget actionText;
  final String value;
  final bool isNegative;
  final String dateAgo;
  final int commentsNumber;
  final int likesNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: PicPayColors.picpayWhite,
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25,
        top: 30.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              _buildImage(),
              actionText,
            ],
          ),
          const SizedBox(
            height: 22.0,
          ),
          Row(
            children: [
              Text(
                value,
                style: !isNegative
                    ? TextStyles.positiveMoneyValue
                    : TextStyles.positiveMoneyValue.copyWith(color: Colors.red),
              ),
              _verticalDivider(),
              const Icon(
                Icons.lock_outline,
                color: PicPayColors.picpayMediumLight400Grey,
                size: 22,
              ),
              Text(
                dateAgo,
                style: TextStyles.smallLightGreyLabel,
              ),
              const Spacer(),
              _iconWithTextRow(Icons.chat_bubble_outline, commentsNumber),
              const SizedBox(
                width: 20.0,
              ),
              _iconWithTextRow(Icons.favorite_border_outlined, likesNumber),
            ],
          )
        ],
      ),
    );
  }

  Container _verticalDivider() {
    return Container(
      color: PicPayColors.picpayMediumLight400Grey,
      height: 13.0,
      width: 1,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }

  Padding _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 10.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: PicPayColors.picpayWhite,
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black12,
            width: 1.3,
          ),
        ),
      ),
    );
  }

  Widget _iconWithTextRow(IconData icon, int numberLabel) {
    return Row(children: [
      Icon(
        icon,
        color: PicPayColors.picpayMediumLight500Grey,
        size: 24,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 5.0),
        child: Text(
          "$numberLabel",
          style: const TextStyle(
            color: PicPayColors.picpayMediumLight500Grey,
          ),
        ),
      ),
    ]);
  }
}
