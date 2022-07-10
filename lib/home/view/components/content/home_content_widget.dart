import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_search_bar_widget.dart';
import 'package:picpay_clone/home/view/components/content/home_suggestion_list_item_widget.dart';
import 'package:picpay_clone/home/view/components/content/suggestion_list_items.dart';
import 'package:picpay_clone/home/view/components/tab_bar/activities_tab_bar_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/all_activities_tab_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/my_actions_tab_widget.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/label_styles.dart';
import 'package:picpay_clone/shared/styles/text/title_styles.dart';

class HomeContentWidget extends StatefulWidget {
  const HomeContentWidget({Key? key}) : super(key: key);

  @override
  State<HomeContentWidget> createState() => _HomeContentWidgetState();
}

class _HomeContentWidgetState extends State<HomeContentWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeSearchBarWidget(),
              _suggestionsForYouList(),
              _specialSelectionCard(),
              const SizedBox(
                height: 20,
              ),
              _activitiesTabBar(),
            ],
          )),
    );
  }

  Widget _activitiesTabBar() {
    return Column(children: [
      ActivitiesTabBarWidget(
        controller: _tabController,
        onTap: (value) => setState(() {
          _tabController.index = value;
        }),
      ),
      Builder(builder: (_) {
        if (_tabController.index == 0) {
          return const AllActivitiesTabWidget();
        } else if (_tabController.index == 1) {
          return const MyActionsTabWidget();
        } else {
          return Container();
        }
      }),
    ]);
  }

  Widget _specialSelectionCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 2.5,
        color: PicPayColors.picpayWhite,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              const Icon(
                Icons.local_offer_outlined,
                size: 30.0,
                color: PicPayColors.picpayLightGreen,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seleção especial',
                    style: smallLabel.copyWith(fontSize: 15),
                  ),
                  Text('Promoções disponíveis',
                      style: mediumTitleText.copyWith(
                        fontWeight: FontWeight.w900,
                      )),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                size: 16.0,
                color: PicPayColors.picpayLightGreen,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _suggestionsForYouList() {
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
