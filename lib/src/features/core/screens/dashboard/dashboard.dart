import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/widgets/banner.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/widgets/categoris.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:flutter_authentication/src/features/core/screens/dashboard/widgets/top_courses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // variables
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDhashboardTitle, style: textTheme.bodyText2),
              Text(tDhashboardHeading, style: textTheme.headline2),
              const SizedBox(
                height: tDashboardPadding,
              ),
              // search box
              DashBoardSearch(textTheme: textTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              // categories
              DashBoardCatergoris(textTheme: textTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              DashBoardBanner(textTheme: textTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),
              // Top Courses
              Text(tDhashboardTopCourses,
                  style: textTheme.headline4?.apply(fontSizeFactor: 1.2)),
              TopCourses(textTheme: textTheme)
            ],
          ),
        ),
      ),
    );
  }
}
