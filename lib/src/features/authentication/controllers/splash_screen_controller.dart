import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(microseconds: 5000));
    Get.to(WelcomeScreen());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
