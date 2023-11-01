import 'package:flutter/material.dart';
import 'package:kakaobank/presentation/main/components/checking_account_card.dart';
import 'package:kakaobank/presentation/main/components/main_ad_card.dart';
import 'package:kakaobank/presentation/main/components/main_app_bar.dart';
import 'package:kakaobank/presentation/main/components/more_button.dart';
import 'package:kakaobank/presentation/main/components/savings_account_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343b57),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        constraints: BoxConstraints(
          maxWidth: 632,
        ),
        child: CustomScrollView(
          key: PageStorageKey<String>('main'),
          slivers: [
            SliverAppBar(
              titleSpacing: 10,
              backgroundColor: Color(0xff343b57),
              title: MainAppBar(),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  SizedBox(
                    height: 20,
                  ),
                  MainAdCard(
                    title: 'mini 생활',
                    content: '우리학교 급식표, 시간표 보러가요!',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CheckingAccountCard(),
                  SizedBox(
                    height: 15,
                  ),
                  SavingsAccountCard(
                    color: Color(0xfff1a8af),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SavingsAccountCard(
                    color: Color(0xffd16562),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SavingsAccountCard(
                    color: Color(0xffdd8369),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MoreButton(),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
