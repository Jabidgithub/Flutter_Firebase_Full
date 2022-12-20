import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:flutter_authentication/src/features/authentication/screens/forget_password/forget_password_phone/forget_password_phone.dart';
import 'package:get/get.dart';

import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> BuildShowModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tForgetPasswordTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                tForgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 30.0,
              ),
              ForgetPasswordBtnWidget(
                onTap: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordMailScreen());
                },
                btnIcon: Icons.mail_outline_rounded,
                subtitle: tResetViaEmail,
                title: tEmail,
              ),
              SizedBox(
                height: 20.0,
              ),
              ForgetPasswordBtnWidget(
                onTap: () {
                  Navigator.pop(context);
                  Get.to(() => const ForgetPasswordPhoneScreen());
                },
                btnIcon: Icons.mobile_friendly_rounded,
                subtitle: tResetViaPhone,
                title: tResetViaPhone,
              ),
            ],
          )),
    );
  }
}
