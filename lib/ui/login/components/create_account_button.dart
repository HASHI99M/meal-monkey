import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';
class CreateAccountButton extends StatelessWidget {
  final Function onTap;

  const CreateAccountButton({Key key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(PsSize.screenWidth),
      splashColor: PsColors.TRANSPARENT_COLOR,
      highlightColor: PsColors.TRANSPARENT_COLOR,

      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: PsSize.defaultSizeHeight * 1.5),
        decoration: BoxDecoration(
            border: Border.all(width: 1.6  , color: PsColors.MAIN_COLOR),
            borderRadius: BorderRadius.circular(PsSize.screenWidth)
        ),
        child: Text('Create an Account' , style: Theme.of(context).textTheme.bodyText2.copyWith(color: PsColors.MAIN_COLOR ),),
      ),
    );
  }
}