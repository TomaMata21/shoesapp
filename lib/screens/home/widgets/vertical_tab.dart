import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';

class VerticalTab extends StatefulWidget {
  const VerticalTab({super.key});

  @override
  State<VerticalTab> createState() => _VerticalTabState();
}

class _VerticalTabState extends State<VerticalTab> {
  String currentTab = AppConfigs.menus[0];

  void onChangeTab(String tab) {
    setState(() {
      currentTab = tab;
    });
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.4,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: AppConfigs.menus
                .map((word) => GestureDetector(
              onTap: () => onChangeTab(word),
                  child: Column(
              children: [
                  ...word.split('').reversed.map(
                        (e) => RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        e,
                        style:
                        AppTheme.bodyLarge.copyWith(
                          color: currentTab == word
                            ? AppTheme.black
                            : AppTheme.grey,
                        ),
                      ),
                    ),
                  ),
                  const Gap(12.0),
              ],
            ),
                ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
