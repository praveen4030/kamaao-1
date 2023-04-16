import 'package:flutter/material.dart';
import 'package:kamao/app/components/buttons/border_button.dart';
import 'package:kamao/app/components/text/custom_text.dart';

class HeaderBannerTile extends StatelessWidget {
  final String title;
  final String image;
  final String buttonText;
  final Function onTap;
  const HeaderBannerTile({
    Key? key,
    required this.title,
    required this.image,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 148,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            Color(0xFFFBE3FF),
            Color(0xFFE0DEFF),
            Color(0xFFD1E9FF),
          ],
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: CustomTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                BorderButton(
                  bgColor: Colors.white,
                  text: buttonText,
                  onTap: onTap,
                  color: const Color(0xff767DDF),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Image.asset(
            "assets/images/png/$image.png",
          ),
        ],
      ),
    );
  }
}
