import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_colors.dart';
class ProductCard extends StatelessWidget {
  final double defaultSize;
  final Function onClick;
  const ProductCard({Key key, this.defaultSize , this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: defaultSize *32,
      child: LayoutBuilder(builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: onClick,
            child: Container(
              width: constraints.maxWidth, height: constraints.maxHeight * .8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultSize),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/Delivery vector.png')
                  )
              ),
            ),
          ),
          Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight * .2,
            padding: EdgeInsets.only(top: defaultSize*.5 , left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name Product Food' ,style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold), ),
                Row(
                  children: [
                    Icon(Icons.star , color: PsColors.MAIN_COLOR,),
                    Text('4.5' , style: TextStyle(color: PsColors.MAIN_COLOR),),
                    SizedBox(width: defaultSize,),
                    Text('Description the food',style: TextStyle(color: Colors.grey) )
                  ],
                ),
              ],
            ),
          )
        ],
      ),),

    );
  }
}