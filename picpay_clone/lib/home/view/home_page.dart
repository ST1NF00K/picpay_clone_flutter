import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/picpay_home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PicPayHomeAppBar(),
      body: Column(
        children: const [],
      ),
    );
  }
}

