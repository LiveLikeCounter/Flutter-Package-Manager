import 'package:flutter/material.dart';

import '../models/customer.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/bottomNavBar.dart';
import '../widgets/appDrawer.dart';

import 'customers_list_item.dart';

class Customers extends StatefulWidget {
  static const routeName = '/customers';
  final List<Customer> customerList;

  Customers({Key key, @required this.customerList}) : super(key: key);

  _CustomersState createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  List<Customer> favoriteCustomers;
  List<Customer> otherCustomers;

  @override
  void initState() {
    favoriteCustomers = widget.customerList
        .where((Customer customer) => customer.isFavorite == true)
        .toList();

    otherCustomers = widget.customerList
        .where((Customer customer) => customer.isFavorite == false)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, 'Customers', CustomColors.Red, CustomColors.Red3),
      drawer: appDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Text(
                'Favorites'.toUpperCase(),
                style: CustomTextStyles.ListTitleText,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return CustomerListItem(
                  id: favoriteCustomers[index].id,
                  name: favoriteCustomers[index].name,
                  packagesCount: favoriteCustomers[index].packagesCount,
                  isFavorite: favoriteCustomers[index].isFavorite,
                );
              },
              itemCount: favoriteCustomers.length,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Other Customers'.toUpperCase(),
                style: CustomTextStyles.ListTitleText,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return CustomerListItem(
                  id: otherCustomers[index].id,
                  name: otherCustomers[index].name,
                  packagesCount: otherCustomers[index].packagesCount,
                  isFavorite: otherCustomers[index].isFavorite,
                );
              },
              itemCount: otherCustomers.length,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBarApp(context, 1),
      ),
    );
  }
}
