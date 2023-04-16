import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/controllers/account_profile_page_wallet_page_controller.dart';
import 'package:kamao/app/utils/image_path.dart';

class WalletBalanceHeader
    extends GetView<AccountProfilePageWalletPageController> {
  const WalletBalanceHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: <Color>[
            Color(0xffFF8994),
            Color(0xffFFB959),
          ],
          end: Alignment.centerRight,
          begin: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              "Wallet Balance",
              style: CustomTextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            Text(
              "₹5480",
              style: CustomTextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const Spacer(),
        Image.asset(ImagePath.btransfer)
      ]),
    );
  }
}
