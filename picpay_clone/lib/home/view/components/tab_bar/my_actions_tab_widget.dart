import 'package:flutter/material.dart';
import 'package:picpay_clone/home/view/components/content/home_event_card.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';
import 'package:picpay_clone/shared/styles/text_styles.dart';

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
            separatorBuilder: ((context, index) => Container(
                  height: 10.0,
                  color: PicPayColors.picpayLightGrey,
                )),
            itemBuilder: (context, index) {
              return HomeEventCard(
                image: const NetworkImage(
                    'https://logospng.org/download/pix/logo-pix-icone-512.png'),
                actionText: _buildActionText(),
                value: 'R\$ 100,00',
                isNegative: false,
                dateAgo: '1 semana atrás',
                commentsNumber: 0,
                likesNumber: 0,
              );
            }),
        Container(
          height: 10.0,
          color: PicPayColors.picpayLightGrey,
        ),
      ],
    );
  }

  Text _buildActionText() {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
            text: 'Você',
            style: TextStyles.homeCardActionText
                .copyWith(fontWeight: FontWeight.bold)),
        const TextSpan(text: ' enviou um '),
        TextSpan(
            text: 'Pix',
            style: TextStyles.homeCardActionText
                .copyWith(fontWeight: FontWeight.bold)),
      ]),
      style: TextStyles.homeCardActionText,
    );
  }
}
