import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';

class DashBoardBanner extends StatelessWidget {
  const DashBoardBanner({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      child: Image(
                        image: AssetImage(tBookMarkIcon),
                        width: 25,
                        height: 25,
                      ),
                    ),
                    Flexible(
                      child: Image(
                        image: AssetImage(tBannerImage1),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  tDhashboardBannerTitle1,
                  style: textTheme.headline4,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDhashboardBannerSubTitle1,
                  style: textTheme.bodyText1,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: tDashboardCardPadding,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                          child: Image(
                            image: AssetImage(tBookMarkIcon),
                            width: 25,
                            height: 25,
                          ),
                        ),
                        Flexible(
                          child: Image(
                            image: AssetImage(tBannerImage2),
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      tDhashboardBannerTitle2,
                      style: textTheme.headline4,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      tDhashboardBannerSubTitle1,
                      style: textTheme.bodyText1,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(tDashboardButton),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
