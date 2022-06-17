import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_content_widget.dart';
import 'package:picpay_clone/home/view/components/header/home_header_widget.dart';
import 'package:picpay_clone/home/view/components/nav_bar/custom_bottom_nav_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustonBottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
             HomeHeaderWidget(),
             HomeContentWidget(),
          ],
        ),
      ),
    );
  }
}

