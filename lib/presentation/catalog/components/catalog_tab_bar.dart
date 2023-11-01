import 'package:flutter/material.dart';

class CatalogTabBar extends StatelessWidget {
  final TabController tabController;

  const CatalogTabBar({required Key key, required this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      tabs: <Widget>[
        Tab(
          child: Text(
            'All',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            'Account',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            'Loan',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            'Service',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            'Alliance',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
