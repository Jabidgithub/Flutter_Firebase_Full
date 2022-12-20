import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter_authentication/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_authentication/src/features/authentication/screens/singnup/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    var height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeinAnimation(
            durationMs: 1200,
            animate: TAnimatedPosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftAfter: 0,
                leftBefore: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.3,
                  ),
                  Column(
                    children: [
                      Text(tWelcomeTitle,
                          style: Theme.of(context).textTheme.headline3),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Get.to(() => LoginScreen()),
                          child: Text(
                            tLogin.toUpperCase(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => Get.to(() => SignUpScreen()),
                          child: Text(
                            tSignup.toUpperCase(),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
