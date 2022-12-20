import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    this.imageHeight = 0.2,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
    this.imageColor,
    this.textalign,
  });

  final String image, title, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final double imageHeight;
  final double? heightBetween;
  final Color? imageColor;
  final TextAlign? textalign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
          color: imageColor,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(title,
            textAlign: textalign, style: Theme.of(context).textTheme.headline1),
        Text(subtitle,
            textAlign: textalign, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
    ;
  }
}
