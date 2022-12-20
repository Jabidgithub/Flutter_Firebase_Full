import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:flutter_authentication/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_authentication/src/features/authentication/screens/singnup/widgets/singup_form_widget.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subtitle: tSignUpSubTitle,
                ),
                SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(tSignInWithGoogle.toUpperCase()),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => LoginScreen());
                      },
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(text: tAlreadyHaveAnAccount, style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(text: tLogin.toUpperCase()),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
