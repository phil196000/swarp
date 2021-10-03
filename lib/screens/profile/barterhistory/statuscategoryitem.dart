import 'package:flutter/material.dart';
import 'package:swarp/customised_widgets/texts/blacktext.dart';
import 'package:swarp/theme/colors.dart';

class StatusCategoryItem extends StatelessWidget {
  const StatusCategoryItem(
      {Key? key, this.onPressed, required this.icon, required this.title})
      : super(key: key);
  final Function()? onPressed;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.primary20,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              icon,
              size: 30,
              color: AppColors.primary,
            ),
          ),
          BlackText(
            text: title,
            margin: EdgeInsets.only(top: 10),
            weight: FontWeight.normal,
          )
        ],
      ),
    );
  }
}
