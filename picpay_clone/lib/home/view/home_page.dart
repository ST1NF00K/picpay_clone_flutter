import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/app_bar/picpay_home_app_bar.dart';
import 'package:picpay_clone/home/view/components/nav_bar/custom_bottom_nav_bar.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PicPayHomeAppBar(
        height: 280.h,
      ),
      bottomNavigationBar: const CustonBottomNavBar(),
      body: Container(
        color: PicPayColors.PICPAY_PRIMARY_GREEN,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: PicPayColors.PICPAY_WHITE_FONT,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0)),
          ),
          child: Column(),
        ),
      ),
    );
  }
}

