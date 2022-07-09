import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_search_bar_widget.dart';
import 'package:picpay_clone/home/view/components/content/home_suggestion_list_item_widget.dart';
import 'package:picpay_clone/home/view/components/content/suggestion_list_items.dart';
import 'package:picpay_clone/home/view/components/tab_bar/activities_tab_bar_view_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/activities_tab_bar_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/title_styles.dart';

class HomeContentWidget extends StatelessWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: PicPayColors.picpayPrimaryGreen,
      child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: PicPayColors.picpayWhite,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0)),
          ),
          child: DefaultTabController(
            length: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeSearchBarWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, bottom: 5.0),
                  child: Text(
                    "Sugestões para você",
                    style: mediumTitleText,
                  ),
                ),
                _suggestionsForYouList(),
                const SizedBox(
                  height: 20.0,
                ),
                const ActivitiesTabBarWidget(),
                const ActivitiesTabBarViewWidget()
              ],
            ),
          )),
    );
  }

  SizedBox _suggestionsForYouList() {
    return SizedBox(
      height: 130.0,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
          scrollDirection: Axis.horizontal,
          itemCount: suggestionListItems.length,
          separatorBuilder: ((context, index) => const SizedBox(width: 15.0)),
          itemBuilder: (context, index) {
            return HomeSugestionListItemWidget(
              image: suggestionListItems[index]["image"],
              label: suggestionListItems[index]["label"],
            );
          }),
    );
  }
}

