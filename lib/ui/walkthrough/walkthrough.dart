import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/const/route_paths.dart';
import 'package:meal_monkey/ui/components/primary_button.dart';
import 'package:meal_monkey/ui/walkthrough/components/wlakthrough_item.dart';

class Walkthrough extends StatefulWidget {
  @override
  _WalkthroughState createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  PageController _controller;
  int indexPage = 0;

  @override
  Widget build(BuildContext context) {
    PsSize(context);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: PsSize.screenHeight * .7,
              child: PageView(
                children: [
                  WalkthroughItem(
                      title: 'Find Food You Love',
                      description:
                          'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
                      imageURL: 'assets/images/Live tracking vector.png'),
                  WalkthroughItem(
                      title: 'Fast Delivery',
                      description:
                          'Fast food delivery to your home. office wherever you are',
                      imageURL: 'assets/images/Delivery vector.png'),
                  WalkthroughItem(
                      title: 'Live Tracking',
                      description:
                          'Real time tracking of your food on the app once you placed the order',
                      imageURL: 'assets/images/Find food you love vector.png'),
                ],
                onPageChanged: (value) {
                  setState(() {
                    indexPage = value;
                  });
                },
                controller: _controller,
              ),
            ),
            Container(
              height: PsSize.screenHeight * .3,
              width: PsSize.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [..._drawCircle()],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: PsSize.defaultSizeWidth * 2),
                    child: PrimaryButton(
                      text: 'Next',
                      onTap: nextStep,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Widget> _drawCircle() {
    List<AnimatedContainer> containers = [];
    for (int i = 0; i < 3; i++) {
      containers.add(AnimatedContainer(
        duration: Duration(milliseconds: 100),
        margin: EdgeInsets.symmetric(horizontal: PsSize.defaultSizeWidth * .5),
        width: indexPage == i
            ? PsSize.defaultSizeWidth * 2
            : PsSize.defaultSizeWidth,
        height: PsSize.defaultSizeHeight * .6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(PsSize.defaultSizeWidth * .5),
            color: indexPage == i
                ? PsColors.MAIN_COLOR
                : PsColors.PLACEHOLDER_COLOR),
      ));
    }
    return containers;
  }

  void nextStep() {
    int pageIndex = _controller.page.toInt();
    if (pageIndex != 2) {
      _controller.nextPage(
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    }
    print(pageIndex);
    Navigator.pushReplacementNamed(context, RoutesPaths.home);

    ;
  }
}
