import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:shoesap/configs/app_theme.dart';
import 'package:shoesap/screens/home/widgets/custom_bottom_navigation.dart';
import 'package:shoesap/screens/home/widgets/home_body.dart';
import 'package:shoesap/screens/home/widgets/home_bottom.dart';
import 'package:shoesap/screens/home/widgets/home_tab.dart';
import 'package:shoesap/screens/home/widgets/vertical_tab.dart';

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
        backgroundColor: AppTheme.lightGrey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height * 0.1),
          child: Container(
            color: AppTheme.white,
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
        ),
        body: Container(
          color: AppTheme.white,
          child: Column(
            children: [
              const HomeTab(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const VerticalTab(),
                  Expanded(
                    child: HomeBody(),
                  ),
                ],
              ),
              const Gap(8),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "More",
                      style: AppTheme.titleLarge,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: AppTheme.black,
                      ),
                    )
                  ],
                ),
              ),
              const Gap(8),
              const HomeBottom(),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigation(),
      ),
    );
  }
}
