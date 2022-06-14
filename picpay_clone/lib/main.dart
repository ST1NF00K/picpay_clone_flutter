import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:picpay_clone/home/view/home_page.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: PicPayColors.PICPAY_PRIMARY_GREEN,
              cardColor: PicPayColors.PICPAY_CARD_DARK_GREEN,
            ),
            home: const HomePage(),
          );
        });
  }
}
