
import 'package:flutter/material.dart';
import 'package:picpay_clone/shared/styles/picpay_colors.dart';

class CustomBottomNavBarItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomBottomNavBarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              size: 30.0,
              color:
                  isSelected ? PicPayColors.PICPAY_PRIMARY_GREEN : Colors.grey,
            ),
            Text(
              text,
              style: TextStyle(
                  color: isSelected
                      ? PicPayColors.PICPAY_PRIMARY_GREEN
                      : Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
