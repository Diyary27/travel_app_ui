import 'package:flutter/material.dart';
import 'package:travel_app_ui/constant/colors.dart';

class ReusableText extends StatelessWidget {
  ReusableText({
    super.key,
    required this.text,
    this.size = 16,
    this.fontWeight = FontWeight.w600,
    this.color = AppColor.primaryColor,
    this.overflow = TextOverflow.visible,
  });

  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      overflow: TextOverflow.fade,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
