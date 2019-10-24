import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dummy_data.dart';
import 'models/sale.dart';
import 'models/customer.dart';
import 'models/packageDates.dart';

import 'core/util.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/sales.dart';
import 'screens/articles.dart';
import 'screens/customers.dart';
import 'screens/packageDates.dart';
import 'screens/packages.dart';
import 'screens/deliveries.dart';
import 'screens/settings.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  List<Customer> _customers = DUMMY_CUSTOMER;
  List<Sale> _sales = DUMMY_SALE;
  List<PackageDate> _packageDates = DUMMY_PACKAGEDATE;

  void initState() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        //statusBarColor: Colors.transparent, //top bar color
      ),
    );
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: CustomColors.BodyBackground,
        fontFamily: 'rubik',
      ),
      title: 'Flutter Christmas Packages',
      initialRoute: '/home',
      routes: {
        '/': (ctx) => Login(),
        Home.routeName: (ctx) => Home(),
        Sales.routeName: (ctx) => Sales(salesList: _sales),
        Articles.routeName: (ctx) => Articles(),
        Customers.routeName: (ctx) => Customers(
              customerList: _customers,
            ),
        PackageDates.routeName: (ctx) => PackageDates(packageDatesList: _packageDates),
        Packages.routeName: (ctx) => Packages(),
        Deliveries.routeName: (ctx) => Deliveries(),
        Settings.routeName: (ctx) => Settings(),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        // print(settings.name);
        return;
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => Login(),
        );
      },
    );
  }
}
