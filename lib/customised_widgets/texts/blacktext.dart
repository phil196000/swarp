import 'package:flutter/material.dart';
import 'package:swarp/theme/colors.dart';

class BlackText extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final double size;
  final Color color;
  final EdgeInsets margin;
  final TextDecoration decoration;

  const BlackText(
      {Key? key,
      this.decoration = TextDecoration.none,
      required this.text,
      this.color = AppColors.secondary,
      this.weight = FontWeight.bold,
      this.size = 18,
      this.margin = const EdgeInsets.all(0)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(
        text,
        style: TextStyle(
            fontSize: size,
            color: color,
            fontWeight: weight,
            decoration: decoration),
        // textAlign: TextAlign.left,
      ),
    );
  }
}
