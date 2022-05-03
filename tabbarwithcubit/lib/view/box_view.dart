import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabbarwithcubit/view/profile_view.dart';
import 'package:tabbarwithcubit/view/settings_view.dart';
import '../tabbar_cubit/cubit/tabbarcubit_cubit.dart';
import '../widgets/bottom_navy_bar.dart';
import '../widgets/my_app_bar.dart';
import 'home_view.dart';

class BoxView extends StatelessWidget {
  const BoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabbarCubit, int>(builder: (context, state) {
      return Scaffold(
        appBar: const MyAppBar(),
        bottomNavigationBar: const BottomNaviBar(),
        body: SafeArea(
            child: IndexedStack(
          index: state,
          children: const [
            HomeView(),
            ProfileView(),
            SettingsView(),
          ],
        )),
      );
    });
  }
}
