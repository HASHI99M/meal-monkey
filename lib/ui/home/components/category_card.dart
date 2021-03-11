import 'package:flutter/material.dart';
import 'package:meal_monkey/config/ps_size.dart';

class CategoryCard extends StatelessWidget {
  final Function onTap;
  final String title;

  final String imageURL;

  const CategoryCard({Key key, this.onTap, this.title, this.imageURL = 'https://via.placeholder.com/150'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(PsSize.defaultSizeHeight * 10);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(PsSize.defaultSizeWidth * 2),
          topRight: Radius.circular(PsSize.defaultSizeWidth * 2)),
      child: Container(
        width: 120,
        height: 126,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .80,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(PsSize.defaultSizeWidth * 2),
                      color: Colors.grey,
                      image: DecorationImage(
                        image: NetworkImage(imageURL),
                        fit: BoxFit.fill
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'data',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
