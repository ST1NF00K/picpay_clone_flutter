import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/nav_bar/custom_bottom_nav_bar_item.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class CustonBottomNavBar extends StatelessWidget {
  const CustonBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(height: 30.0, color: Colors.transparent),
            _simpleItems(),
          ],
        ),
        _fabItem(),
      ],
    );
  }

  Widget _fabItem() {
    return Positioned(
        bottom: 7.0,
        child: Column(
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: PicPayColors.PICPAY_BUTTON_MEDIUM_GREEN,
              child: const Icon(
                CupertinoIcons.money_dollar,
                color: PicPayColors.PICPAY_WHITE_FONT,
                size: 35.0,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Pagar',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 11),
              ),
            ),
          ],
        ),
      );
  }

  Widget _simpleItems() {
    return BottomAppBar(
              shape: const CircularNotchedRectangle(),
              color: PicPayColors.PICPAY_WHITE_FONT,
              child: SizedBox(
                height: 57.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    CustomBottomNavBarItem(
                      icon: Icons.home,
                      text: "Início",
                      onTap: () {},
                      isSelected: true,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    CustomBottomNavBarItem(
                      icon: Icons.account_balance_wallet_outlined,
                      text: "Carteira",
                      onTap: () {},
                      isSelected: false,
                    ),
                    const SizedBox(
                      width: 60.0,
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
                  ],
                ),
              ));
  }
}
