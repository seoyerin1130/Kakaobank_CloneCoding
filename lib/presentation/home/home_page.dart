import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakaobank/blocs/home_cubit.dart';
import 'package:kakaobank/presentation/catalog/catalog_page.dart';
import 'package:kakaobank/presentation/main/main_page.dart';
import 'package:kakaobank/presentation/more/more_page.dart';
import 'package:kakaobank/presentation/notification/notification_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (_, state) {
        return WillPopScope(
          onWillPop: () async {
            return true;
          },
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                _changeBottomNav(_, index);
              },
              currentIndex: state,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Main",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                  ),
                  label: "Catalog",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "Notification",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  label: "More",
                ),
              ],
            ),
            body: _buildBody(state),
          ),
        );
      },
    );
  }

  void _changeBottomNav(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.read<HomeCubit>().getMain();
        break;
      case 1:
        context.read<HomeCubit>().getCatalog();
        break;
      case 2:
        context.read<HomeCubit>().getNotification();
        break;
      case 3:
        context.read<HomeCubit>().getMore();
        break;
    }
  }

  Widget _buildBody(index) {
    switch (index) {
      case 0:
        return MainPage();
      case 1:
        return CatalogPage();
      case 2:
        return NotificationPage();
      case 3:
        return MorePage();
      default:
        return Container();
    }
  }
}