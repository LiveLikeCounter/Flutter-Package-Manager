import 'package:flutter/material.dart';

import '../models/sale.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';
import '../widgets/bottomNavBar.dart';
import '../screens/sales_list_item.dart';

class Sales extends StatefulWidget {
  static const routeName = '/sales';
  final List<Sale> salesList;

  Sales({Key key, @required this.salesList}) : super(key: key);

  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  List<Sale> customerSales;
  List<Sale> packageSales;
  List<Sale> articleSales;
  
  @override
  void initState() {
    customerSales = widget.salesList
        .where((Sale sale) => sale.type == Type.Customers)
        .toList();
    packageSales = widget.salesList
        .where((Sale sale) => sale.type == Type.Packages)
        .toList();
    articleSales = widget.salesList
        .where((Sale sale) => sale.type == Type.Articles)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(context, 'Sales', CustomColors.Purple, CustomColors.Purple),
      drawer: appDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 15),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return SalesListItem(
                  content: customerSales[index].content,
                  description: customerSales[index].description,
                  color: customerSales[index].color,
                );
              },
              itemCount: customerSales.length,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return SalesListItem(
                  content: packageSales[index].content,
                  description: packageSales[index].description,
                  color: packageSales[index].color,
                );
              },
              itemCount: packageSales.length,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return SalesListItem(
                  content: articleSales[index].content,
                  description: articleSales[index].description,
                  color: articleSales[index].color,
                );
              },
              itemCount: articleSales.length,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBarApp(context, 2),
      ),
    );
  }
}
