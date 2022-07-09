import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/info_column_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/info_list_abstraction.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/info_list_item_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/all_activities/rectangle_icon_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/my_actions_tab_widget.dart';
import 'package:picpay_clone/home/view/components/tab_bar/shared/grey_divider.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text/description_styles.dart';

class AllActivitiesTabWidget extends StatelessWidget {
  const AllActivitiesTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildListWidget1(),
        const GreyDivider(),
        _buildListWidget2(),
        const GreyDivider(),
        const MyActionsTabWidget(),
      ],
    );
  }

  Widget _buildListWidget1() {
    return InfoColumnWidget(
      title: 'Pague suas contas pelo PicPay',
      description: 'Parcele em até 12x com qualquer cartão de\ncrédito',
      list: InfoListAbstraction(
        height: 160,
        itemCount: 5,
        itemBuilder: (context, item) {
          return InfoListItemWidget(
            title: Text(
              'Multas e IPVA',
              style: semiBoldMediumText.copyWith(fontSize: 16.5),
            ),
            icon: RectangleIconWidget(
              image: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1581/1581891.png',
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildListWidget2() {
    return InfoColumnWidget(
      title: 'Compre recargas e Gift Cards',
      description: 'Para alimentação, jogos, entretenimento e\nmais!',
      list: InfoListAbstraction(
        height: 200,
        itemCount: 5,
        itemBuilder: (context, item) {
          return InfoListItemWidget(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recarga de\nCelular',
                    style: mediumDescriptionText.copyWith(fontSize: 18.5),
                  ),
                  const SizedBox(
                    height: 11.0,
                  ),
                  Text(
                    'Vivo, Claro, Tim,\nOi e outras',
                    style: mediumDescriptionText.copyWith(fontSize: 16),
                  ),
                ],
              ),
              icon: Container(
                height: 57.0,
                width: 57.0,
                decoration: BoxDecoration(
                  color: PicPayColors.picpayLightGreen,
                  borderRadius: BorderRadius.circular(40),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://cdn-icons-png.flaticon.com/512/38/38653.png')),
                ),
              ));
        },
      ),
    );
  }
}
