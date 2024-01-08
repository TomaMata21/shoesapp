import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';
import 'package:shoesap/screens/home/widgets/home_tab.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppTheme.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.1),
          child: Column(
            children: [
              const Spacer(),
              AppBar(
                backgroundColor: AppTheme.white,
                elevation: 0,
                scrolledUnderElevation: 0,
                title: Text(
                  "Discover",
                  style: AppTheme.textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppTheme.lightGrey,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: AppTheme.black,
                    ),
                  ),
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppTheme.lightGrey,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: AppTheme.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            HomeTab(),
          ],
        ),
      ),
    );
  }
}
