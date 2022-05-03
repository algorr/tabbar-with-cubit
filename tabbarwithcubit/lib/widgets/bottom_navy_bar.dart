import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabbarwithcubit/utils/consts.dart';

import '../tabbar_cubit/cubit/tabbarcubit_cubit.dart';

class BottomNaviBar extends StatelessWidget {
  const BottomNaviBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarCubit, int>(
      builder: (context, state) {
        return BottomNavyBar(
          backgroundColor: bottomNaviColor,
          selectedIndex: state,
          items: [
            BottomNavyBarItem(
              icon: const Icon(bottomNaviMessagesIcon),
              title: bottomNaviMessagesText,
              inactiveColor: bottomNaviInactiveColor,
              activeColor: bottomNaviActiveColor,
            ),
            BottomNavyBarItem(
              icon: const Icon(bottomNaviCallsIcon),
              title: bottomNaviCallsText,
              inactiveColor: bottomNaviInactiveColor,
              activeColor: bottomNaviActiveColor,
            ),
            BottomNavyBarItem(
              icon: const Icon(bottomNaviSettingsIcon),
              title: bottomNaviSettingsText,
              inactiveColor: bottomNaviInactiveColor,
              activeColor: bottomNaviActiveColor,
            ),
          ],
          onItemSelected: context.read<TabbarCubit>().updateIndex,
        );
      },
    );
  }
}
