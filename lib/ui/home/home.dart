import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meal_monkey/config/ps_colors.dart';
import 'package:meal_monkey/config/ps_size.dart';
import 'package:meal_monkey/ui/components/custom_text_field.dart';
import 'package:meal_monkey/ui/home/components/category_card.dart';
import 'package:meal_monkey/ui/home/components/menu_button.dart';
import 'package:meal_monkey/ui/home/components/product_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        width: PsSize.screenWidth,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: PsColors.Grey_COLOR.withOpacity(.3),
              offset: Offset(0, 2),
              blurRadius: 20)
        ]),
        child: Stack(
          children: [
            CustomPaint(
              size: Size(PsSize.screenWidth, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: .6,
              child: FloatingActionButton(
                onPressed: () => null,
                child: SvgPicture.asset('assets/icons/ic_home.svg'),
                backgroundColor: PsColors.MAIN_COLOR,
              ),
            ),
            Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MenuButton(
                    onClick: () {},
                    asset: 'assets/icons/ic_menu.svg',
                    title: 'Menu',
                  ),
                  MenuButton(
                      onClick: () {},
                      asset: 'assets/icons/ic_shopping-bag.svg',
                      title: 'Offers'),
                  SizedBox(
                    width: PsSize.screenWidth * .20,
                  ),
                  MenuButton(
                      onClick: () {},
                      asset: 'assets/icons/ic_man-user.svg',
                      title: 'Profile'),
                  MenuButton(
                      onClick: () {},
                      asset: 'assets/icons/ic_more.svg',
                      title: 'More')
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            drawerHeader(context),
            SizedBox(height: 10,),
            drawerHeader2(),
            CategoryCard(),
            ProductCard(
              defaultSize: 10,
            )
          ],
        ),
      ),
    );
  }
}
Widget drawerHeader(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: PsSize.defaultSizeWidth * 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Welcome Hashim !',
          style: Theme.of(context).textTheme.headline5,
        ),
        Icon(Icons.shopping_cart , color: PsColors.PRIMARY_FONT_COLOR,size: 26,)
      ],
    ),
  );
}
Widget drawerHeader2() {
  return Container(
    width: PsSize.screenWidth,
    padding: EdgeInsets.symmetric(horizontal: PsSize.defaultSizeWidth * 2),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivering to',
          style: TextStyle(color: PsColors.PLACEHOLDER_COLOR),
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Text(
              'Current location',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: PsColors.PRIMARY_FONT_COLOR),
            ),
            SizedBox(width: 5,),
            Icon(Icons.keyboard_arrow_down , color: PsColors.MAIN_COLOR,)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CustomTextField(
          isSearch: true,
          hint: 'Search food',
        ),
      ],
    ),
  );
}



class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
