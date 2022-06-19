import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_event_card.dart';
import 'package:picpay_clone/home/view/components/tab_bar/my_actions_tab_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

class ActivitiesTabBarViewWidget extends StatelessWidget {
  const ActivitiesTabBarViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: const [
         MyActionsTabWidget(),
         MyActionsTabWidget(),
      ],
    );
  }

}

