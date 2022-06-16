import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/home/view/components/nav_bar/bottom_nav_bar_middle_button_widget.dart';
import 'package:picpay_clone/home/view/components/nav_bar/custom_bottom_nav_bar_item_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class CustonBottomNavBar extends StatefulWidget {
  const CustonBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustonBottomNavBar> createState() => _CustonBottomNavBarState();
}

class _CustonBottomNavBarState extends State<CustonBottomNavBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: PicPayColors.PICPAY_WHITE_FONT,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 56.h,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomBottomNavBarItem(
                      icon: Icons.home,
                      text: "Início",
                      onTap: () {},
                      isSelected: true,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    CustomBottomNavBarItem(
                      icon: Icons.account_balance_wallet_outlined,
                      text: "Carteira",
                      onTap: () {},
                      isSelected: false,
                    ),
                    SizedBox(
                      width: 60.w,
                    ),
                    CustomBottomNavBarItem(
                      icon: CupertinoIcons.bell,
                      text: "Notificações",
                      onTap: () {},
                      isSelected: false,
                    ),
                    CustomBottomNavBarItem(
                      icon: Icons.shopping_bag_outlined,
                      text: "Store",
                      onTap: () {},
                      isSelected: false,
                    ),
                  ]),
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: const BottomNavBarMiddleButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
