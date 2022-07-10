import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/label_styles.dart';

class ActivitiesTabBarWidget extends StatelessWidget {
  const ActivitiesTabBarWidget({
    Key? key,
    required this.controller,
    this.onTap,
  }) : super(key: key);

  final TabController controller;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20.0),
      child: Row(
        children: [
          Text(
            "Atividades",
            style: boldGreyText,
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 200.sp,
            child: TabBar(
                onTap: onTap,
                controller: controller,
                labelColor: PicPayColors.picpayLightGreen,
                unselectedLabelColor: PicPayColors.picpayMediumLight500Grey,
                indicatorColor: PicPayColors.picpayLightGreen,
                labelStyle: tabLabel,
                tabs: const [
                  Tab(
                    text: "Todos",
                  ),
                  Tab(
                    text: "Minhas",
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
