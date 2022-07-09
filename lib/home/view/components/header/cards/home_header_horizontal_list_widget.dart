import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/home/view/components/header/cards/card_items.dart';
import 'package:picpay_clone/home/view/components/header/cards/green_home_card_widget.dart';

class HomeHeaderHorizontalListWidget extends StatelessWidget {
  const HomeHeaderHorizontalListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GreenHomeCardWidget(
            title: cardItensList[index]["title"],
            icon: cardItensList[index]["icon"],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: 1.0,
          );
        },
        itemCount: cardItensList.length,
      ),
    );
  }
}
