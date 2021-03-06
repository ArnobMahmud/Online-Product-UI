import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_products_ui/config/constant.dart';
import 'package:online_products_ui/screen/detail_screen.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({
    Key key,
    this.imageUrl,
    this.check = false,
  }) : super(key: key);

  final bool check;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen())
        );
      },
      child: Container(
        width: 150,
        height: 210,
        padding: const EdgeInsets.all(mDefaultPadding),
        decoration: BoxDecoration(
          color: check ? mPrimaryColor : mCardBackgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Multimedia',
              style: TextStyle(
                color: check ? Colors.white : mSecondTextColor,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: mDefaultPadding / 3,
            ),
            Text(
              'Lorem ipsum dolor sit amet',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: check ? Colors.white : mPrimaryTextColor,
              ),
            ),
            SizedBox(
              height: mDefaultPadding / 2,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 3,
                  width: 80,
                  color: check ? Colors.white : mSubColor,
                ),
                Container(
                  height: 3,
                  width: 30,
                  color: mLineColor,
                )
              ],
            ),
            SizedBox(
              height: mDefaultPadding,
            ),
            Expanded(
              child: SvgPicture.asset(
                imageUrl,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
