import 'package:flutter/widgets.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.news,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  });
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String news;

  @override
  Widget build(BuildContext context) {
    return Text(
      news,
      softWrap: false,
      maxLines: 20,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}