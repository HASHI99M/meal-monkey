import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Function onChange;
  final TextEditingController controller;
  final bool isSearch;
  final TextInputType keyboard;

  const CustomTextField(
      {Key key,
      this.hint,
      this.onChange,
      this.controller,
      this.isSearch = false,
      this.keyboard = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle _style = TextStyle(
        color: PsColors.SECONDARY_FONT_COLOR.withOpacity(.6), fontSize: 16);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isSearch ? 0 : PsSize.defaultSizeWidth * 2),
      decoration: BoxDecoration(
          color: PsColors.PLACEHOLDER_COLOR2,
          borderRadius: BorderRadius.circular(PsSize.defaultSizeWidth * 2.5)),
      child: TextField(
        keyboardType: keyboard,
        textAlignVertical:
            isSearch ? TextAlignVertical.center : TextAlignVertical.top,
        obscureText: keyboard == TextInputType.visiblePassword,
        decoration: InputDecoration(
            contentPadding: isSearch
                ? null
                : EdgeInsets.symmetric(vertical: PsSize.defaultSizeHeight * 1.8
                    /*20*/),
            border: InputBorder.none,
            hintText: hint,
            hintStyle: _style,
            prefixIcon: isSearch
                ? Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: PsSize.defaultSizeWidth),
                    child: SvgPicture.asset(
                      'assets/icons/ic_search.svg',
                      color: PsColors.PRIMARY_FONT_COLOR,
                      height: 1,
                      width: 1,
                    ),
                  )
                : null),
        style: _style.copyWith(color: PsColors.PRIMARY_FONT_COLOR),
        controller: controller,
        onChanged: onChange,

      ),
    );
  }
}
