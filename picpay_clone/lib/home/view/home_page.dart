import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/app_bar/picpay_home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PicPayHomeAppBar(
        height: MediaQuery.of(context).size.height * 0.4,
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
