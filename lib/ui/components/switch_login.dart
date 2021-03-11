import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';
class SwitchLogin extends StatelessWidget {
  final bool signUp;
  final Function onTap;
  const SwitchLogin({Key key, this.signUp = false, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: PsSize.defaultSizeHeight),
        width: PsSize.screenWidth,
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(signUp ? 'Don\'t have an Account ?' : 'Already have an Account ?' , style: Theme.of(context).textTheme.subtitle2.copyWith(color: PsColors.SECONDARY_FONT_COLOR),),
            SizedBox(width: 3,),
            Text(signUp ?'Sign Up' : 'Login' , style: Theme.of(context).textTheme.subtitle1.copyWith(color: PsColors.MAIN_COLOR),)
          ],
        ) ,
      ),
    );
  }
}