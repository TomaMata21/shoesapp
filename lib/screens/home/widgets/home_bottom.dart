import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: AppTheme.lightGrey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            2,
            (index) => Container(
              width: width * 0.45,
              padding: const EdgeInsets.all(2),
              margin: EdgeInsets.symmetric(
                horizontal: width * 0.02,
                vertical: width * 0.03,
              ),
              decoration: BoxDecoration(
                color: AppTheme.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppTheme.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 2,
                      ),
                      decoration: const BoxDecoration(
                        color: AppTheme.primary,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: "NEW"
                            .split('')
                            .reversed
                            .map(
                              (e) => RotatedBox(
                                quarterTurns: 3,
                                child: Text(
                                  e,
                                  style: AppTheme.bodySmall.copyWith(
                                    color: AppTheme.white,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    bottom: 16,
                    right: 8,
                    left: 8,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(
                            AppConfigs.getShoes()[index].image,
                          ),
                        ),
                        const Gap(8),
                        Text(
                          AppConfigs.getShoes()[index].name,
                          textAlign: TextAlign.center,
                          style: AppTheme.labelMedium.copyWith(
                            color: AppTheme.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(4),
                        Text(
                          AppConfigs.getShoes()[index].price,
                          style: AppTheme.labelMedium.copyWith(
                            color: AppTheme.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
