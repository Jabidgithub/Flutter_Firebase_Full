import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(tWelcomeScreenImage),
          height: size.height * 0.2,
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
