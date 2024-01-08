import 'package:flutter/material.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String currentTab = AppConfigs.brands[0];

  void onChangeTab(String tab) {
    setState(() {
      currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: AppConfigs.brands
              .map(
                (e) => GestureDetector(
                  onTap: () => onChangeTab(e),
                  child: SizedBox(
                    height: 36,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        if (currentTab == e)
                          Positioned(
                            bottom: -5,
                            top: 0,
                            right: 0,
                            left: 0,
                            child: Center(
                              child: Container(
                                height: 12,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: AppTheme.lightGrey,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Text(
                                  e,
                                  textAlign: TextAlign.center,
                                  style: AppTheme.bodyLarge.copyWith(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          child: Text(
                            e,
                            textAlign: TextAlign.center,
                            style: AppTheme.bodyLarge.copyWith(
                              color: currentTab == e
                                  ? AppTheme.black
                                  : AppTheme.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
