import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoesap/configs/app_theme.dart';
import 'package:shoesap/model/shoe.dart';

class ShoeDetailScreen extends StatelessWidget {
  const ShoeDetailScreen({
    super.key,
    required this.shoe,
    required this.color,
  });
  final Shoe shoe;
  final Color color;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.35),
        child: CustomPaint(
          painter: CustomHeaderPainter(color: color),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: height * 0.05),
            decoration: BoxDecoration(
              // color: color,
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(height * 0.25)),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppTheme.white,
                      ),
                    ),
                    Text(
                      shoe.brand,
                      style: AppTheme.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppTheme.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: AppTheme.primary.withOpacity(0.5),
                        elevation: 5,
                      ),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: AppTheme.white,
                      ),
                    ),
                  ],
                ),
                // Expanded(
                //   child: Transform(
                //     transform: Matrix4.identity()
                //       ..rotateZ(-45 * (math.pi / 180))
                //       ..scale(2.0),
                //     child: Image.asset(
                //       shoe.image,
                //     ),
                //   ),
                // ),
                Expanded(child: Container()),
                Expanded(
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(
                        -20 * (math.pi / 180),
                      ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(shoe.image), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(),
    );
  }
}

class CustomHeaderPainter extends CustomPainter {
  final Color color;

  CustomHeaderPainter({super.repaint, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 16.0;

    final path = Path();
    path.lineTo(0, size.height * 0.6);
    path.arcToPoint(Offset(size.width, size.height),
        radius: const Radius.circular(260), clockwise: false);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
