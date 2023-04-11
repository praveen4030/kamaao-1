import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/views/wallet_header_box_tile.dart';
import 'package:kamao/app/routes/app_pages.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32, bottom: 16, left: 16, right: 16),
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: <Color>[
              Color(0xffFF8994),
              Color(0xffFFB959),
            ],
            end: Alignment.centerRight,
            begin: Alignment.centerLeft,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: CustomTextStyle(
                        textColor: Colors.white,
                        textSize: 14,
                        textWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "5480",
                      style: CustomTextStyle(
                        textColor: Colors.white,
                        textSize: 18,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 1,
                  color: Kolors.seperatorLight,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total Coins",
                      style: CustomTextStyle(
                        textColor: Colors.white,
                        textSize: 14,
                        textWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "8580",
                      style: CustomTextStyle(
                        textColor: Colors.white,
                        textSize: 18,
                        textWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Divider(
                height: 1,
                color: Kolors.seperatorLight,
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: WalletHeaderBoxTile(
                    onTap: () {
                      Get.toNamed(
                          Routes.ACCOUNT_PROFILE_PAGE_TRANSFER_TO_BANK_PAGE);
                    },
                    icon: ImagePath.download,
                    text: "Transfer To Bank",
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: WalletHeaderBoxTile(
                    onTap: () {},
                    icon: ImagePath.download,
                    text: "Redeem coins",
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: WalletHeaderBoxTile(
                    onTap: () {},
                    icon: ImagePath.document,
                    text: "Transaction History",
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
