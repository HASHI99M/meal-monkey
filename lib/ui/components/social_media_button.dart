import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';

class SocialMediaButton extends StatelessWidget {
  final bool facebook;
  final Function onTap;
  const SocialMediaButton({Key key, this.facebook = false, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(PsSize.defaultSizeWidth*3),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: PsSize.defaultSizeHeight*1.6),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(PsSize.defaultSizeWidth*3) , color: facebook ? PsColors.facebookLoginButtonColor :PsColors.googleLoginButtonColor),
        child: facebook ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/ic_facebook.svg',color: Colors.white,width: PsSize.defaultSizeWidth*1.8,),
            SizedBox(width: PsSize.defaultSizeWidth,),
            Text('Login with Facebook' , style: Theme.of(context).textTheme.bodyText2.copyWith(color: PsColors.WHITE_COLOR),)
          ],
        ) :Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/ic_google.svg',color: Colors.white,width: PsSize.defaultSizeWidth*1.8,),
            SizedBox(width: PsSize.defaultSizeWidth,),
            Text('Login with Google' , style: Theme.of(context).textTheme.bodyText2.copyWith(color: PsColors.WHITE_COLOR),)
          ],
        ) ,
      ),
    );
  }
}
