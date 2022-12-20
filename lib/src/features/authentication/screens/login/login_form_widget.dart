import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:flutter_authentication/src/features/authentication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/dashboard.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: tEmail,
              hintText: tEmail,
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye_sharp),
                )),
          ),
          const SizedBox(
            height: tFormHeight - 20,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.BuildShowModelBottomSheet(context);
              },
              child: Text(tForgetPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Get.to(() => Dashboard());
                },
                child: Text(tLogin.toUpperCase())),
          )
        ],
      ),
    ));
  }
}
