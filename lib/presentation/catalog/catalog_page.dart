import 'package:flutter/material.dart';
import 'package:kakaobank/presentation/catalog/components/catalog_app_bar.dart';
import 'package:kakaobank/presentation/catalog/components/catalog_tab_bar.dart';

class CatalogPage extends StatefulWidget {
  @override
  _CatalogPageState createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(
              key: PageStorageKey<String>('catalog'),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  elevation: 0,
                  title: CatalogAppBar(),
                  backgroundColor: Colors.white,
                  pinned: true,
                ),
                SliverAppBar(
                  titleSpacing: 10,
                  elevation: 0,
                  title: CatalogAppBar(
                  ),
                  backgroundColor: Colors.white,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
