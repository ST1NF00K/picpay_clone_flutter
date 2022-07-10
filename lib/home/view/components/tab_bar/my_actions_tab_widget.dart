import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_event_card.dart';
import 'package:picpay_clone/shared/components/grey_divider.dart';
import 'package:picpay_clone/shared/styles/text/description_styles.dart';

class MyActionsTabWidget extends StatelessWidget {
  const MyActionsTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.separated(
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            shrinkWrap: true,
            separatorBuilder: ((context, index) => const GreyDivider()),
            itemBuilder: (context, index) {
              return HomeEventCard(
                image: const AssetImage('assets/pix-icon.png'),
                actionText: _buildActionText(),
                value: 'R\$ 100,00',
                isNegative: false,
                dateAgo: '1 semana atrás',
                commentsNumber: 0,
                likesNumber: 0,
              );
            }),
        const GreyDivider()
      ],
    );
  }

  Text _buildActionText() {
    return Text.rich(
      TextSpan(children: [
        TextSpan(text: 'Você', style: boldMediumText),
        const TextSpan(text: ' enviou um '),
        TextSpan(text: 'Pix', style: boldMediumText),
      ]),
      style: homeCardActionDescription,
    );
  }
}
