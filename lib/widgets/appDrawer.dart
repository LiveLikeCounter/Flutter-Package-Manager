import 'package:flutter/material.dart';

import '../core/util.dart';

import '../screens/customers.dart';
import '../screens/packageDates.dart';
import '../screens/home.dart';
import '../screens/packages.dart';
import '../screens/sales.dart';
import '../screens/deliveries.dart';
import '../screens/settings.dart';

Widget _listDivider() {
  return Divider(
    thickness: 1,
    height: 1,
    color: CustomColors.GreyBorder,
  );
}

Widget appDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        UserAccountsDrawerHeader(
          margin: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: CustomColors.Purple,
            boxShadow: [
              BoxShadow(
                  color: CustomColors.ActiveIndication,
                  offset: Offset(0, 4),
                  blurRadius: 4.0)
            ],
          ),
          accountName: Text("Josh Clark"),
          accountEmail: Text("joshclark@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: CustomColors.ActiveIndication,
            child: Text(
              "JC",
              style: TextStyle(fontSize: 40.0),
            ),
          ),
        ),
        ListView(
          padding: EdgeInsets.only(top: 5),
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            ListTile(
              title: Text("Home", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/home@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Home.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title: Text("Customers", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/card@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Customers.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title: Text("Packages", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/box@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Packages.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title: Text("Orders", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/truck@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Deliveries.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title: Text("Sales", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/money@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Sales.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title:
                  Text("Packagedates", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/shoppingcart@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(PackageDates.routeName);
              },
            ),
            _listDivider(),
            ListTile(
              title:
                  Text("Settings", style: CustomTextStyles.AppDrawerTiles),
              trailing: Image.asset('assets/images/1.5x/settings@1.5x.png'),
              onTap: () {
                Navigator.of(context).pushNamed(Settings.routeName);
              },
            ),
          ],
        ),
      ],
    ),
  );
}
