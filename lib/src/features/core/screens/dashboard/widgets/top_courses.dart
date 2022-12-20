import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';
import 'package:flutter_authentication/src/constants/sizes.dart';
import 'package:flutter_authentication/src/features/core/models/dashboard/top_course_model.dart';

class TopCourses extends StatelessWidget {
  const TopCourses({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = TopCoursesModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(list[index].title,
                              style: textTheme.headline4,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Flexible(
                          child: Image(
                            image: AssetImage(list[index].image),
                            height: 110,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder()),
                          onPressed: () {},
                          child: const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(
                          width: tDashboardCardPadding,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].Subtitle1,
                              style: textTheme.headline4,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              list[index].Subtitle2,
                              style: textTheme.bodyText1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
