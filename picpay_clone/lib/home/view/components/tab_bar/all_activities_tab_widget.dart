import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/tab_bar/my_actions_tab_widget.dart';

class AllActivitiesTabWidget extends StatelessWidget {
  const AllActivitiesTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildWidget(),
      const MyActionsTabWidget(),
      ],
    );
  }

  _buildWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pague suas contas pelo PicPay', ),
        Text('Parcele em até 12x com qualquer cartão de\ncrédito'),

      ],
    );
  }
}
