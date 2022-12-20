import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/singnup/signup_screen.dart';
import 'package:get/get.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(
              width: 20.0,
              image: AssetImage(
                tGoogleLogoImage,
              ),
            ),
            onPressed: () {},
            label: Text(tSignInWithGoogle),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () {
            Get.to(() => SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
              text: tDontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: tSignup,
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
