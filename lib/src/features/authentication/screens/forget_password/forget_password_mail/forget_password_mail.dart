import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SizedBox(
                  height: tDefaultSize * 4,
                ),
                FormHeaderWidget(
                  image: tForgetPasswordImage,
                  title: tLoginTitle,
                  subtitle: tLoginSubTitle,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30.0,
                  textalign: TextAlign.center,
                ),
                SizedBox(
                  height: tFormHeight,
                ),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: Icon(Icons.mail_outline_rounded),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => OTPScreen());
                              },
                              child: Text(tNext)))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
