import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/colors.dart';
import 'package:flutter_authentication/src/features/core/models/dashboard/categoris_model.dart';

class DashBoardCatergoris extends StatelessWidget {
  const DashBoardCatergoris({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoardCategorisModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 50,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: tDarkColor),
                  child: Center(
                    child: Text(
                      list[index].title,
                      style: textTheme.headline6?.apply(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        list[index].subHeading,
                        style: textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(list[index].heading, style: textTheme.bodyText2),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
