import 'package:flutter/material.dart';
import 'package:musixmatch/views/favorites/favorites_screen.dart';
import 'package:musixmatch/views/home/home_screen.dart';
import 'package:musixmatch/views/main_screen.dart/widgets/bottom_nav_bar_widget.dart';

const _pages = [
  HomeScreen(),
  FavoriteScreen(),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (context, value, child) {
          return _pages[value];
        },
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
