import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/theme/colors.dart';

class ChooseBankTile extends StatelessWidget {
  final BankModel bankModel;
  final int index;
  final RxInt selectedIndex;
  const ChooseBankTile({
    Key? key,
    required this.bankModel,
    required this.index,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: InkWell(
        onTap: () {
          selectedIndex(index);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Kolors.integrfaceInputBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Image.asset(
                bankModel.image,
                height: 24,
                width: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bankModel.bank,
                      style: CustomTextStyle(
                        textColor: Kolors.secondaryTextColor,
                        textSize: 16,
                      ),
                    ),
                    Text(
                      "A/c No. ${bankModel.accountNo}",
                      style: CustomTextStyle(
                        textColor: Kolors.tertiaryTextColor,
                        textSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Radio(
                  activeColor: Kolors.checkBoxColor,
                  toggleable: true,
                  onChanged: (val) {
                    selectedIndex(index);
                  },
                  value: selectedIndex.value,
                  groupValue: index,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BankModel {
  final String image;
  final String bank;
  final String accountNo;

  BankModel({
    required this.image,
    required this.bank,
    required this.accountNo,
  });
}
