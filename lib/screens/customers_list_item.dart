import 'package:flutter/material.dart';

import '../core/util.dart';

class CustomerListItem extends StatelessWidget {
  final String id;
  final String name;
  final int packagesCount;
  final bool isFavorite;

  CustomerListItem(
      {@required this.id,
      @required this.name,
      @required this.packagesCount,
      @required this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
      padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            packagesCount.toString(),
            style: TextStyle(
                color: packagesCount > 0
                    ? CustomColors.GreenAccent
                    : CustomColors.OrangeAccent,
                fontSize: 20),
          ),
          Container(
            width: 180,
            child: Text(
              name,
              style: CustomTextStyles.ListContainerText,
            ),
          ),
          InkWell(
            onTap: () {},
            child: isFavorite == true
                ? Image.asset('assets/images/1x/start-fill.png')
                : Image.asset('assets/images/1x/start-opacity.png'),
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.015, 0.015],
          colors: [
            packagesCount > 0
                ? CustomColors.GreenAccent
                : CustomColors.OrangeAccent,
            Colors.white
          ],
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.GreyBorder,
            blurRadius: 10.0,
            spreadRadius: 5.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
    );
  }
}
