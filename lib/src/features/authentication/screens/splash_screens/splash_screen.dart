import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeinAnimation(
              durationMs: 1600,
              child: Image(
                image: AssetImage(tSplashTopIcon),
                height: tSplashScreenIconSize.toDouble() * 2,
              ),
              animate: TAnimatedPosition(
                topAfter: 10,
                topBefore: 10,
              ),
            ),
            TFadeinAnimation(
              durationMs: 2000,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    tAppTagLine,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              animate: TAnimatedPosition(
                topAfter: 160,
                topBefore: 0,
                bottomAfter: 0,
                bottomBefore: 0,
                leftAfter: 40,
                rightBefore: 0,
              ),
            ),
            TFadeinAnimation(
              durationMs: 2000,
              child: Image(
                width: 400,
                height: 400,
                image: AssetImage(tSplashImage),
              ),
              animate: TAnimatedPosition(bottomBefore: 0, bottomAfter: 200),
            ),
            TFadeinAnimation(
              durationMs: 2400,
              child: Container(
                width: tSplashContainerSize * 4,
                height: tSplashContainerSize * 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
              animate: TAnimatedPosition(
                  bottomAfter: 40,
                  topBefore: 0,
                  rightAfter: 60,
                  rightBefore: 0),
            ),
          ],
        ),
      ),
    );
  }
}
