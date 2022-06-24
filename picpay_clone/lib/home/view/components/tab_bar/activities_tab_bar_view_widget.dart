import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/all_activities_tab_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/my_actions_tab_widget.dart';

class ActivitiesTabBarViewWidget extends StatelessWidget {
  const ActivitiesTabBarViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      children: const [
         AllActivitiesTabWidget(),
         MyActionsTabWidget(),
      ],
    );
  }

}

