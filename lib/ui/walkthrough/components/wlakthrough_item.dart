import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';

class WalkthroughItem extends StatelessWidget {
  final String title;
  final String description;
  final String imageURL;

  const WalkthroughItem({Key key, @required this.title, @required this.description, @required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: PsSize.defaultSizeHeight * 4,
          ),
          Image(
            image: AssetImage(imageURL),
            width: PsSize.screenWidth * .8,
            height: PsSize.screenHeight * .38,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: PsSize.defaultSizeHeight * 3,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4.copyWith(fontFamily: 'Metropolis-ExtraBold'),
          ),
          SizedBox(
            height: PsSize.defaultSizeHeight * 2,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: PsSize.defaultSizeHeight*4),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText2.copyWith(color: PsColors.SECONDARY_FONT_COLOR , height: 1.5),
            ),
          ),
        ],
      ),
    );


  }
}
