import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/description_styles.dart';
import 'package:picpay_clone/shared/styles/text/label_styles.dart';

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
      padding: EdgeInsets.only(
        left: 25.0.sp,
        right: 25.sp,
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
           SizedBox(
            height: 22.0.sp,
          ),
          Row(
            children: [
              Text(
                value,
                style: !isNegative
                    ? positiveMoneyValue
                    : positiveMoneyValue.copyWith(color: Colors.red),
              ),
              _verticalDivider(),
               Icon(
                Icons.lock_outline,
                color: PicPayColors.picpayMediumLight400Grey,
                size: 22.sp,
              ),
              Text(
                dateAgo,
                style: smallLightGreyLabel,
              ),
              const Spacer(),
              _iconWithTextRow(Icons.chat_bubble_outline, commentsNumber),
               SizedBox(
                width: 20.0.sp,
              ),
              _iconWithTextRow(Icons.favorite_border_outlined, likesNumber),
            ],
          )
        ],
      ),
    );
  }

  Widget _verticalDivider() {
    return Container(
      color: PicPayColors.picpayMediumLight400Grey,
      height: 13.0,
      width: 1,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: EdgeInsets.only(left: 5.sp, right: 10.0.sp),
      child: Container(
        width: 45.0.sp,
        height: 45.0.sp,
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
    return FittedBox(
      child: Row(children: [
        Icon(
          icon,
          color: PicPayColors.picpayMediumLight500Grey,
          size: 24.sp,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0.sp),
          child: Text(
            "$numberLabel",
            style: const TextStyle(
              color: PicPayColors.picpayMediumLight500Grey,
            ),
          ),
        ),
      ]),
    );
  }
}
