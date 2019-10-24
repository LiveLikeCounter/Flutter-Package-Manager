import 'package:flutter/material.dart';

import '../core/util.dart';
import 'customers.dart';
import 'articles.dart';
import 'packageDates.dart';
import 'packages.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

_cardContainerDecoration(Color color1, Color color2, Color color3) {
  return BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(5.0),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 5.0,
        spreadRadius: 3.0,
        offset: Offset(0.0, 0.0),
      ),
    ],
    // image: DecorationImage(
    //     image: AssetImage(
    //         'assets/images/2x/baseline_keyboard_arrow_right_white_18dp.png'),
    //     alignment: Alignment.bottomRight,
    //     fit: BoxFit.scaleDown),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.5, 1],
      colors: [
        color1,
        color2,
        color3,
      ],
    ),
  );
}

class _HomeState extends State<Home> {
  final routeName = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.BodyBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Customers.routeName);
            },
            child: Container(
              height: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: _cardContainerDecoration(
                  CustomColors.Red, CustomColors.Red2, CustomColors.Red3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset('assets/images/2x/card@2x.png'),
                          decoration: const BoxDecoration(
                            color: CustomColors.Red3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        Text(
                          'Customers',
                          style: CustomTextStyles.CardGroupTitel,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '94',
                          style: CustomTextStyles.CardGroupInfo,
                        ),
                        Text(
                          '+15 more then last year'.toUpperCase(),
                          style: CustomTextStyles.CardGroupInfoSubscription,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Packages.routeName);
            },
            child: Container(
              height: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: _cardContainerDecoration(
                  CustomColors.Blue, CustomColors.Blue2, CustomColors.Blue3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset('assets/images/2x/gift@2x.png'),
                          decoration: const BoxDecoration(
                            color: CustomColors.Blue3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        Text(
                          'Packages',
                          style: CustomTextStyles.CardGroupTitel,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '121',
                          style: CustomTextStyles.CardGroupInfo,
                        ),
                        Text(
                          'By 89 customers'.toUpperCase(),
                          style: CustomTextStyles.CardGroupInfoSubscription,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(Articles.routeName);
            },
            child: Container(
              height: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: _cardContainerDecoration(CustomColors.Yellow,
                  CustomColors.Yellow2, CustomColors.Yellow3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset('assets/images/2x/box@2x.png'),
                          decoration: const BoxDecoration(
                            color: CustomColors.Yellow3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        Text(
                          'Articles',
                          style: CustomTextStyles.CardGroupTitel,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '467',
                          style: CustomTextStyles.CardGroupInfo,
                        ),
                        Text(
                          'Articles available'.toUpperCase(),
                          style: CustomTextStyles.CardGroupInfoSubscription,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(PackageDates.routeName);
            },
            child: Container(
              height: 150.0,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: _cardContainerDecoration(
                  CustomColors.Green, CustomColors.Green2, CustomColors.Green3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: 65,
                          height: 65,
                          child: Image.asset(
                              'assets/images/2x/shoppingcart@2x.png'),
                          decoration: const BoxDecoration(
                            color: CustomColors.Green3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        Text(
                          'Package dates',
                          style: CustomTextStyles.CardGroupTitel,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '15 nov',
                          style: CustomTextStyles.CardGroupInfo,
                        ),
                        Text(
                          '5 Planed'.toUpperCase(),
                          style: CustomTextStyles.CardGroupInfoSubscription,
                        ),
                        Text(
                          '2 past already'.toUpperCase(),
                          style: CustomTextStyles.CardGroupInfoSubscription,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
