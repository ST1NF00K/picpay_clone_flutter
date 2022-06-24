import 'package:flutter/material.dart';

class InfoListAbstraction extends StatelessWidget {
  const InfoListAbstraction({
    Key? key,
    required this.height,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final double height;
  final Widget Function(BuildContext, int) itemBuilder;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: itemCount,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10.0,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
