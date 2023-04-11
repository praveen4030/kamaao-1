import 'package:flutter/material.dart';
import 'package:kamao/app/components/buttons/primary_button.dart';

class BottomSheetButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isEnabled;
  const BottomSheetButton({
    Key? key,
    required this.isEnabled,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 7)
        ],
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: PrimaryButton(
            isEnabled: isEnabled,
            onTap: () {
              onTap();
            },
            title: text,
          ),
        ),
      ),
    );
  }
}
