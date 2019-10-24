import 'package:flutter/material.dart';

import '../core/util.dart';
import '../screens/customers.dart';
import '../screens/home.dart';
import '../screens/packageDates.dart';
import '../screens/sales.dart';

class BottomNavigationBarApp extends StatelessWidget {
  final int bottomNavigationBarIndex;
  final BuildContext context;

  const BottomNavigationBarApp(this.context, this.bottomNavigationBarIndex);

  void onTabTapped(int index) {
    String route;
    if (index == 0) {
      route = Home.routeName;
    } else if (index == 1) {
      route = Customers.routeName;
    } else if (index == 2) {
      route = Sales.routeName;
    } else if (index == 3) {
      route = PackageDates.routeName;
    }
    Navigator.of(context).pushNamed(route);
  }

  Widget _activeItem(bool selected) {
    final bool _selected = selected;
    return Container(
      width: 5,
      height: 5,
      decoration: BoxDecoration(
        color: (_selected == true)
            ? CustomColors.ActiveIndication
            : CustomColors.InactiveIndication,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: bottomNavigationBarIndex,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/1.5x/home@1.5x.png',
            ),
          ),
          title: this._activeItem(bottomNavigationBarIndex == 0 ? true : false),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/1.5x/card@1.5x.png',
            ),
          ),
          title: this._activeItem(bottomNavigationBarIndex == 1 ? true : false),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/1.5x/money@1.5x.png',
            ),
          ),
          title: this._activeItem(bottomNavigationBarIndex == 2 ? true : false),
        ),
        BottomNavigationBarItem(
          icon: Container(
            margin: EdgeInsets.only(bottom: 5),
            child: Image.asset(
              'assets/images/1.5x/shoppingcart@1.5x.png',
            ),
          ),
          title: this._activeItem(bottomNavigationBarIndex == 3 ? true : false),
        ),
      ],
      onTap: onTabTapped,
    );
  }
}
