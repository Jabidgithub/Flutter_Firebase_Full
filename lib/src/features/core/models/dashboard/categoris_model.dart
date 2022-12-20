import 'package:flutter/material.dart';

class DashBoardCategorisModel {
  final String title;
  final String subHeading;
  final String heading;
  final VoidCallback? onPress;

  DashBoardCategorisModel(
      this.title, this.subHeading, this.heading, this.onPress);

  static List<DashBoardCategorisModel> list = [
    DashBoardCategorisModel("JS", "Java Script", "10 Lessons", null),
    DashBoardCategorisModel("F", "Flutter", "11 Lessons", null),
    DashBoardCategorisModel("H", "HTML", "20 Lessons", null),
    DashBoardCategorisModel("K", "Kotlin", "30 Lessons", null),
    DashBoardCategorisModel("P", "Python", "100 Lessons", null),
  ];
}
