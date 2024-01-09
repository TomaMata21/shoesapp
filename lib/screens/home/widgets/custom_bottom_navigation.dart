import 'package:flutter/material.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BottomNavigationBar(
        backgroundColor: AppTheme.lightGrey,
        elevation: 0,
        items: AppConfigs.icons
            .map(
              (data) => BottomNavigationBarItem(
            backgroundColor: AppTheme.lightGrey,
            icon: Icon(
              data,
              color: data == Icons.home_outlined
                  ? AppTheme.primary
                  : AppTheme.grey,
            ),
            label: "",
          ),
        )
            .toList(),
      ),
    );
  }
}
