import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Icon(btnIcon, size: 60.0),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.headline6),
                Text(subtitle, style: Theme.of(context).textTheme.bodyText1)
              ],
            )
          ],
        ),
      ),
    );
  }
}
