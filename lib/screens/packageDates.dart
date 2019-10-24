import 'package:flutter/material.dart';
import 'package:calendarro/calendarro.dart';
import 'package:calendarro/date_utils.dart';

import '../models/packageDates.dart';

import '../core/util.dart';
import '../widgets/appBar.dart';
import '../widgets/appDrawer.dart';
import '../widgets/bottomNavBar.dart';
import './packageDates_list_item.dart';

class PackageDates extends StatefulWidget {
  static const routeName = '/packagedates';
  final List<PackageDate> packageDatesList;

  PackageDates({Key key, @required this.packageDatesList}) : super(key: key);

  _PackageDatesState createState() => _PackageDatesState();
}

class _PackageDatesState extends State<PackageDates> {
  List<PackageDate> _packageDatesList;
  
  @override
  void initState() {
    _packageDatesList = widget.packageDatesList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context, 'Package dates', CustomColors.Green, CustomColors.Green3),
      drawer: appDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Calendarro(
                displayMode: DisplayMode.MONTHS,
                startDate: DateUtils.getFirstDayOfCurrentMonth(),
                endDate: DateUtils.getLastDayOfCurrentMonth(),
                weekdayLabelsRow: CustomWeekdayLabelsRow(),
                selectedDates: [DateTime(2019, 10, 10)]),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Planed packagedates'.toUpperCase(),
                style: CustomTextStyles.ListTitleText,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (ctx, index) {
                return PackageDateListItem(date: _packageDatesList[index].date);
              },
              itemCount: _packageDatesList.length,
            ),          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: BottomNavigationBarApp(context, 3),
      ),
    );
  }
}

class CustomWeekdayLabelsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(child: Text("M", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("W", textAlign: TextAlign.center)),
        Expanded(child: Text("T", textAlign: TextAlign.center)),
        Expanded(child: Text("F", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
        Expanded(child: Text("S", textAlign: TextAlign.center)),
      ],
    );
  }
}
