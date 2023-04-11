import 'package:flutter/material.dart';
import 'package:kamao/app/theme/colors.dart';

class TakePhotoButton extends StatelessWidget {
  final Function onTap;
  const TakePhotoButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        onTap();
      },
      style: OutlinedButton.styleFrom(
        backgroundColor: Kolors.seperatorHighlight,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(12),
      ),
      child: Image.asset(
        "assets/images/png/camera_fill.png",
        height: 32,
        width: 32,
      ),
    );
  }
}
