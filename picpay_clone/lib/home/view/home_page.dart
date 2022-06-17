import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/header/home_header_widget.dart';
import 'package:picpay_clone/home/view/components/home_search_bar_widget.dart';
import 'package:picpay_clone/home/view/components/nav_bar/custom_bottom_nav_bar_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustonBottomNavBar(),
      body: Column(
        children: [
          const HomeHeaderWidget(),
          Container(
            color: PicPayColors.PICPAY_PRIMARY_GREEN,
            child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: PicPayColors.PICPAY_WHITE_FONT,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                ),
                child: Column(
                  children: const [
                    HomeSearchBarWidget(),
                    
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

