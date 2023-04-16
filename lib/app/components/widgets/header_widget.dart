import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/utils/constants.dart';

class HeaderWidget extends StatelessWidget {
  final String text;
  final String image;
  const HeaderWidget({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: CustomTextStyle(
              fontSize: 22,
              fontWeight: Constants.bold,
            ),
          ),
        ),
        Image.asset(
          image,
          height: 70,
          width: 66.5,
        )
      ],
    );
  }
}
