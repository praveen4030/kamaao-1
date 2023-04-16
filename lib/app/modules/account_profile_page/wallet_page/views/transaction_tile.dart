import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kamao/app/components/text/custom_text.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/models/transaction_model.dart';
import 'package:kamao/app/theme/colors.dart';
import 'package:kamao/app/utils/image_path.dart';

class WalletTransactionTile extends StatelessWidget {
  final TransactionModel transactionModel;
  const WalletTransactionTile({
    Key? key,
    required this.transactionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(children: [
              Image.asset(
                getIcon(),
                height: 48,
                width: 48,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            transactionModel.title,
                            style: CustomTextStyle(
                              color: Kolors.secondarycolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "${transactionModel.transactionType == TransactionType.debit ? "-" : "+"}₹${transactionModel.amount.toInt()}",
                          style: CustomTextStyle(
                            color: transactionModel.transactionType ==
                                    TransactionType.debit
                                ? Kolors.errorColor
                                : transactionModel.transactionType ==
                                        TransactionType.coins
                                    ? Kolors.foundationYellow
                                    : Kolors.successColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          DateFormat("dd MMM, yyyy hh:mm").format(
                            transactionModel.dateTime,
                          ),
                          style: CustomTextStyle(
                            color: Kolors.tertiarycolor,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        if (transactionModel.isPaidFromWallet)
                          Text(
                            "From Wallet",
                            style: CustomTextStyle(
                              color: Kolors.tertiarycolor,
                              fontSize: 12,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  String getIcon() {
    if (transactionModel.transactionType == TransactionType.credit) {
      return ImagePath.greenarrow;
    } else if (transactionModel.transactionType == TransactionType.debit) {
      return ImagePath.redarrow;
    } else {
      return ImagePath.yellowarrow;
    }
  }
}
