import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class ActivitiesTabBarWidget extends StatelessWidget {
  const ActivitiesTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 20.0),
      child: Row(
        children: [
          Text(
            "Atividades",
            style: TextStyles.boldGreyText,
          ),
          const Spacer(),
           SizedBox(
            height: 40,
            width: 200,
            child: TabBar(
                labelColor: PicPayColors.picpayLightGreen,
                unselectedLabelColor: Colors.grey[500],
                indicatorColor: PicPayColors.picpayLightGreen,
                labelStyle: TextStyles.tabLabel,
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
