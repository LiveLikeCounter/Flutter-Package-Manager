import 'package:flutter/material.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';
import '../widgets/bottomNavBar.dart';

class Packages extends StatefulWidget {
  static const routeName = '/packages';

  Packages({Key key}) : super(key: key);

  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Packages', CustomColors.Blue, CustomColors.Blue3),
      drawer: appDrawer(context),
      body: Center(
        child: Text('Packages'),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBarApp(context, 0),
      ),
    );
  }
}