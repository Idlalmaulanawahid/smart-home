import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_home/activity_page.dart';
import 'package:smart_home/bloc/navigation_bloc.dart';
import 'package:smart_home/common/app-colors.dart';
import 'package:smart_home/common/app-font.dart';
import 'package:smart_home/home_page.dart';
import 'package:smart_home/setting_page.dart';
import 'package:smart_home/widget/bottom_navbar.dart';

class MainMenu extends StatelessWidget {
  MainMenu({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const ActivityPage(),
    const SettingPage(),
  ];

  BottomNavigationBarItem createBottomNavItem({
    required String assetName,
    required String menuName,
    required bool isActive,
    required BuildContext context,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        margin: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetName,
              height: 24,
              color: AppColors.greyColor200,
            ),
            Text(
              menuName,
              style: secondaryTextStyle.copyWith(
                  fontSize: 11, fontWeight: bold500),
            ),
          ],
        ),
      ),
      activeIcon: Container(
        margin: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: 42,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetName,
              height: 24,
              color: AppColors.mainBaseColor,
            ),
            Text(
              menuName,
              style:
                  mainBaseTextStyle.copyWith(fontSize: 11, fontWeight: bold700),
            ),
          ],
        ),
      ),
      label: '',
      tooltip: '',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          if (state is NavigationChanged) {
            return pages[state.index];
          }
          return pages[0];
        },
      ),
      bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          int currentIndex = 0;
          if (state is NavigationChanged) {
            currentIndex = state.index;
          }

          final List<BottomNavigationBarItem> bottomNavItems = [
            createBottomNavItem(
              assetName: 'assets/icons/icon-home.svg',
              menuName: 'Home',
              isActive: currentIndex == 0,
              context: context,
            ),
            createBottomNavItem(
              assetName: 'assets/icons/icon-activity.svg',
              menuName: 'Activity',
              isActive: currentIndex == 1,
              context: context,
            ),
            createBottomNavItem(
              assetName: 'assets/icons/icon-user.svg',
              menuName: 'Profile',
              isActive: currentIndex == 2,
              context: context,
            ),
          ];

          return BottomNavBar(
            items: bottomNavItems,
            currentIndex: currentIndex,
          );
        },
      ),
    );
  }
}
