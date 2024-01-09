import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoesap/configs/app_configs.dart';
import 'package:shoesap/configs/app_theme.dart';
import 'package:shoesap/screens/home/shoe_detail_screen.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});

  final PageController _pageController = PageController(viewportFraction: 0.7);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      height: height * 0.35,
      child: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: AppConfigs.getShoes().map(
          (shoe) {
            final color = AppConfigs.getRandomAccentColor();
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ShoeDetailScreen(shoe: shoe, color: color)),
              ),
              child: Container(
                width: width * 0.6,
                margin: EdgeInsets.symmetric(horizontal: width * 0.03),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      right: -width * 0.15,
                      child: Transform.rotate(
                        angle: -40 * (math.pi / 180),
                        child: Image.asset(
                          shoe.image,
                          height: height * 0.40,
                          width: width * 0.6,
                          alignment: Alignment.topRight,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      right: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                shoe.brand.toUpperCase(),
                                style: AppTheme.bodyLarge.copyWith(
                                  color: AppTheme.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: AppTheme.white,
                                ),
                              )
                            ],
                          ),
                          const Gap(1),
                          SizedBox(
                            width: width * 0.4,
                            child: Text(
                              shoe.name.toUpperCase(),
                              style: AppTheme.titleLarge.copyWith(
                                color: AppTheme.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Gap(10),
                          SizedBox(
                            width: width * 0.4,
                            child: Text(
                              shoe.price.toUpperCase(),
                              style: AppTheme.bodyLarge.copyWith(
                                color: AppTheme.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppTheme.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
