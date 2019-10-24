import 'package:flutter/material.dart';

import '../core/util.dart';

class SalesListItem extends StatelessWidget {
  final String content;
  final String description;
  final Color color;
  //final Type type;

  SalesListItem({
    @required this.content,
    @required this.description,
    @required this.color,
    //@required this.type
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                content,
                style: CustomTextStyles.ListContainerNumber,
              ),
              Text(
                description.toUpperCase(),
                style: CustomTextStyles.ListSubTitleText,
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.015, 0.015],
          colors: [color, Colors.white],
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
