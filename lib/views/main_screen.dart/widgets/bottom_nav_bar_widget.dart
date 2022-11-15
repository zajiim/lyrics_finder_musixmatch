import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:musixmatch/constants/constants.dart';


ValueNotifier pageIndex = ValueNotifier(0);
class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: pageIndex,
      builder: (context, newIndex, child) {
        return BottomNavigationBar(
        currentIndex: newIndex,
        onTap: (value) => pageIndex.value = value,
        backgroundColor: kBackgroundColor.withOpacity(0.5),
        selectedItemColor: kFontColor,
        unselectedItemColor: kItemBGColor,
        items: const[
          BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: ""),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.favorite,
                    ),
                    label: ""),
        ],
      );
      },
    
    );
  }
}