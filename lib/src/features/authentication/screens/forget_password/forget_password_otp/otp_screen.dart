import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtptitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(tOtpSubtitle, style: Theme.of(context).textTheme.headline6),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              " $tOtpMessage support@codingwitht.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code) {
                print("OPT is : $code");
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(tNext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
