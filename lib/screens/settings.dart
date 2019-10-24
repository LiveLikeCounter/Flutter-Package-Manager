import 'package:flutter/material.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';

class Settings extends StatefulWidget {
  static const routeName = '/settings';

  Settings({Key key}) : super(key: key);

  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _customerNew = true;
  bool _ordersNew = true;
  bool _ordersToApproved = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(context, 'Settings', CustomColors.Grey, CustomColors.Grey),
      drawer: appDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Customers'.toUpperCase(),
                style: CustomTextStyles.ListTitleText,
              ),
            ),
            SwitchListTile(
              title: const Text('Notification by new customer'),
              value: _customerNew,
              onChanged: (bool value) {
                setState(() {
                  _customerNew = value;
                });
              },
              secondary: const Icon(Icons.notifications),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Orders'.toUpperCase(),
                style: CustomTextStyles.ListTitleText,
              ),
            ),
            SwitchListTile(
              title: const Text('Email by new order'),
              value: _ordersNew,
              onChanged: (bool value) {
                setState(() {
                  _ordersNew = value;
                });
              },
              secondary: const Icon(Icons.email),
            ),
            SwitchListTile(
              title: const Text('Email by orders to approved status'),
              value: _ordersToApproved,
              onChanged: (bool value) {
                setState(() {
                  _ordersToApproved = value;
                });
              },
              secondary: const Icon(Icons.email),
            ),
          ],
        ),
      ),
    );
  }
}
