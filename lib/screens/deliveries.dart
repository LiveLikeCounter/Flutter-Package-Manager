import 'package:flutter/material.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';
import '../widgets/bottomNavBar.dart';

class Deliveries extends StatefulWidget {
  static const routeName = '/deliveries';

  Deliveries({Key key}) : super(key: key);

  _DeliveriesState createState() => _DeliveriesState();
}

class _DeliveriesState extends State<Deliveries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Deliveries', CustomColors.Blue, CustomColors.Blue3),
      drawer: appDrawer(context),
      body: Center(
        child: Text('Deliveries'),
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