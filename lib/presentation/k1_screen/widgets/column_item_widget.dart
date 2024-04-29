import 'package:flutter/material.dart';
// ignore: must_be_immutable

class ColumnItemWidget extends StatelessWidget {
  const ColumnItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.style.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Text(
        "1",
        style: theme.textTheme.headlineSmall,
      ),
    );
  }
}
