import 'package:get/get.dart';
import 'package:kamao/app/modules/account_profile_page/wallet_page/models/transaction_model.dart';

class AccountProfilePageWalletPageController extends GetxController {
  List<TransactionModel> transactionsList = [];
  @override
  void onInit() {
    super.onInit();
    transactionsList = [
      TransactionModel(
        amount: 250,
        dateTime: DateTime.now(),
        id: "1",
        isPaidFromWallet: false,
        title: "Money Received from paytm kyc task",
        transactionType: TransactionType.credit,
      ),
      TransactionModel(
        amount: 750,
        dateTime: DateTime.now(),
        id: "1",
        isPaidFromWallet: true,
        title: "Money Transferred to HDFC xxxx 3345",
        transactionType: TransactionType.debit,
      ),
      TransactionModel(
        amount: 550,
        dateTime: DateTime.now(),
        id: "1",
        isPaidFromWallet: false,
        title: "Coins Received from SBI account opening",
        transactionType: TransactionType.coins,
      ),
      TransactionModel(
        amount: 600,
        dateTime: DateTime.now(),
        id: "1",
        isPaidFromWallet: true,
        title: "Paid For Samsung Earphones",
        transactionType: TransactionType.debit,
      ),
    ];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
