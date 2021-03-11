import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const PrimaryButton({Key key, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ,
      borderRadius: BorderRadius.circular(PsSize.screenWidth),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: PsColors.MAIN_COLOR,
          borderRadius: BorderRadius.circular(PsSize.screenWidth),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: PsSize.defaultSizeHeight*1.6),
        child: Text(text , style: Theme.of(context).textTheme.bodyText2.copyWith(color: PsColors.WHITE_COLOR),),
      ),
    );
  }
}
