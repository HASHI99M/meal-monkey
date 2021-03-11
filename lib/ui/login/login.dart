import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/ui/components/primary_button.dart';
import 'package:meal_monkey/ui/components/social_media_button.dart';
import 'package:meal_monkey/ui/login/components/create_account_button.dart';
import 'package:meal_monkey/ui/sign_in/sign_in.dart';
import 'package:meal_monkey/ui/sign_up/sign_up.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          SignIn(controller: _controller),
          HomeLogin(controller: _controller),
          SignUp(controller: _controller)
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  @override
  void initState() {
    _controller = PageController(initialPage: 1, viewportFraction: 1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

}

class HomeLogin extends StatelessWidget {
  final PageController controller;

  const HomeLogin({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                width: PsSize.screenWidth,
                height: PsSize.screenHeight * .5,
                decoration: BoxDecoration(
                    color: PsColors.MAIN_COLOR,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
              ),
            ),
            Container(
              width: PsSize.screenWidth,
              height: PsSize.screenHeight * .5,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    child: Center(child: Image.asset('assets/images/logo.png')),
                    top: PsSize.defaultSizeHeight * -5,
                    left: 0,
                    right: 0,
                  ),
                  Positioned(
                      right: 0,
                      left: 0,
                      top: PsSize.defaultSizeHeight * 4,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: PsSize.defaultSizeWidth * 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
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
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: PsSize.defaultSizeHeight * .8,
                                ),
                                Text(
                                  'FOOD DELIVERY',
                                  style: Theme.of(context).textTheme.overline,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: PsSize.defaultSizeWidth * 2),
                              child: Text(
                                'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep ',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(
                                        height: 1.4,
                                        color: PsColors.SECONDARY_FONT_COLOR),
                              ),
                            ),
                            Column(
                              children: [
                                PrimaryButton(
                                  text: 'Login',
                                  onTap: () {
                                   goToSignIn();
                                  },
                                ),
                                SizedBox(
                                  height: PsSize.defaultSizeHeight,
                                ),
                                CreateAccountButton(
                                  onTap: () {
                                    goToSignUp();
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void goToSignUp() {
    //controller_minus1To0.reverse(from: 0.0);
    controller.animateToPage(
      2,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
  void goToSignIn() {
    //controller_0To1.forward(from: 0.0);
    controller.animateToPage(
      0,
      duration: Duration(milliseconds: 800),
      curve: Curves.bounceOut,
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width * .25, size.height);
    path.quadraticBezierTo(
        size.width * .5, size.height * .5, size.width * .25, size.height);
    path.quadraticBezierTo(
        size.width * .5, size.height * .5, size.width * .75, size.height);
    path.lineTo(size.width * .75, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
