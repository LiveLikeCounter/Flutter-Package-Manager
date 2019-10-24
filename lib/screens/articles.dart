import 'package:flutter/material.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';
import '../widgets/bottomNavBar.dart';

class Articles extends StatefulWidget {
  static const routeName = '/articles';

  Articles({Key key}) : super(key: key);

  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Articles', CustomColors.Yellow, CustomColors.Yellow3),
      drawer: appDrawer(context),
      body: Center(
        child: Text('Articles'),
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