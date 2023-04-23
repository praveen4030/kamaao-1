import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class ReferInviteBs extends StatelessWidget {
  const ReferInviteBs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              shareViaWidget(),
              searchWidget(),
              contactInviteTile(
                  contact: "9568489654", name: "Aditya Singh Shekhawat"),
              contactInviteTile(contact: "9568489654", name: "Vijay"),
              contactInviteTile(contact: "9568489654", name: "Bharat"),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Kolors.searchBgColor,
      ),
      height: 30,
      child: Row(
        children: [
          Image.asset(
            'assets/images/png/icons/search-normal.png',
            height: 20,
            width: 20,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              cursorColor: const Color(0xff4E5D6B),
              style: CustomTextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 10),
                hintText: "Search Contact",
                hintStyle: CustomTextStyle(
                  fontSize: 16,
                  color: const Color(0xff4E5D6B),
                ),
                border: InputBorder.none,
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }

  Widget shareViaWidget() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Kolors.seperatorLight,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Share via",
            style: CustomTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Kolors.tertiarycolor,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: DottedBorder(
                  color: Kolors.textDisabled,
                  strokeWidth: 1,
                  dashPattern: const [5],
                  strokeCap: StrokeCap.round,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "AW548RJ64",
                            style: CustomTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Kolors.textDisabled,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/images/png/icons/copy.png',
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    iconWidget('whatsapp', () {}),
                    iconWidget('icons/telegram_circular', () {}),
                    iconWidget('icons/share', () {}),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget iconWidget(String icon, Function onTap) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Image.asset(
          "assets/images/png/$icon.png",
          height: 32,
          width: 32,
        ),
      ),
    );
  }

  Widget contactInviteTile({required String name, required String contact}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Image.asset(
            "assets/images/png/icons/profile-circle.png",
            height: 32,
            width: 32,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: CustomTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Kolors.secondarycolor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  contact,
                  style: CustomTextStyle(
                    fontSize: 12,
                    color: Kolors.tertiarycolor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            "Invite",
            style: CustomTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Kolors.backgroundActionColor,
            ),
          ),
        ],
      ),
    );
  }
}
