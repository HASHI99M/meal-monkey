import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_config.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/const/route_paths.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    PsSize(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Background icons.png'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Monkey face.png'),
            SizedBox(
              height: PsSize.defaultSizeHeight * 2,
            ),
            RichText(
              text: TextSpan(
                text: 'Meal ',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: PsColors.MAIN_COLOR),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Monkey',
                      style: Theme.of(context).textTheme.headline5),
                ],
              ),
            ),
            SizedBox(
              height: PsSize.defaultSizeHeight * .8,
            ),
            Text(
              'FOOD DELIVERY',
              style: Theme.of(context).textTheme.overline,
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(PsConfig.default_duration , (){
      Navigator.pushReplacementNamed(context, RoutesPaths.login);
    } );

    super.initState();
  }
}
