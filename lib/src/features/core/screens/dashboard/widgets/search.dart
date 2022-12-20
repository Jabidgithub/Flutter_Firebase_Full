import 'package:flutter/material.dart';
import 'package:flutter_authentication/src/constants/text_strings.dart';

class DashBoardSearch extends StatelessWidget {
  const DashBoardSearch({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(left: BorderSide(width: 4)),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tDhashboardSearch,
            style:
                textTheme.headline2?.apply(color: Colors.grey.withOpacity(0.5)),
          ),
          Icon(
            Icons.mic,
            size: 25,
          )
        ],
      ),
    );
  }
}
