import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/image_strings.dart';

class TopCoursesModel {
  final String title;
  final String Subtitle1;
  final String Subtitle2;
  final String image;
  final VoidCallback? onPress;

  TopCoursesModel(
      this.title, this.Subtitle1, this.Subtitle2, this.image, this.onPress);

  static List<TopCoursesModel> list = [
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
    TopCoursesModel("Flutter Crash Course", "3 Sections",
        "Programming Language", tTopCourseImage1, null),
  ];
}
