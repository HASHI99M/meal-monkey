import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/config/ps_colors.dart';

class MenuButton extends StatelessWidget {
  final String asset;
  final Function onClick;
  final String title;
  const MenuButton({Key key, @required this.asset, @required this.onClick, @required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            asset,
            color: PsColors.PLACEHOLDER_COLOR,
            width: 22,
          ),
          SizedBox(height: 2,),
          Text(
            title,
            style: TextStyle(color: PsColors.PLACEHOLDER_COLOR),
          )
        ],
      ),
    );
  }
}
