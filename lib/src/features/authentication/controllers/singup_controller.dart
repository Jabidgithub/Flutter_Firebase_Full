import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // text fields controller to get data from Text fields

  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNo = TextEditingController();
  final fullName = TextEditingController();

  // Call this function from Design & it will do the rest
  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
