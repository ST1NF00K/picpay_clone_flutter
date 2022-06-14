import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/home/view/components/app_bar/cards/card_items.dart';
import 'package:picpay_clone/home/view/components/app_bar/cards/green_app_bar_card.dart';

class AppBarHorizontalList extends StatefulWidget {
  const AppBarHorizontalList({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarHorizontalList> createState() => _AppBarHorizontalListState();
}

class _AppBarHorizontalListState extends State<AppBarHorizontalList> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    items = cardItensList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 15, right: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GreenAppBarCard(
            title: items[index]["title"],
            icon: items[index]["icon"],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            width: 1.0,
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
