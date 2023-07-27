import 'package:flutter/material.dart';
import 'package:finployee/core/constants/constants.dart';

class CommonText extends StatefulWidget {
  final double? size;

  ///default value [FontWeight.w400]
  final FontWeight? weight;
  final Color? color;
  final String text;
  final TextAlign? align;
  final TextDecoration? textDecoration;
  final int? maxLine;
  final double? lineHeight;

  const CommonText(this.text,
      {Key? key,
      this.align,
      this.size,
      this.weight = FontWeight.w400,
      this.color = Colors.black,
      this.textDecoration,
      this.maxLine = 1,
      this.lineHeight})
      : super(key: key);

  @override
  State<CommonText> createState() => _CommonTextState();
}

class _CommonTextState extends State<CommonText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.align ?? TextAlign.start,
      maxLines: widget.maxLine,
      style: TextStyle(
        fontFamily: AppFontFamily.poppins,
        fontSize: widget.size ?? Sizes.s14.sp,
        fontWeight: widget.weight,
        color: widget.color,
        decoration: widget.textDecoration,
        height: widget.lineHeight,
        letterSpacing: 0,
        wordSpacing: 0,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}
